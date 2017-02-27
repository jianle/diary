#!/usr/bin/env bash

cd $(dirname $0)

port=8778
password=$(openssl rand -base64 8)

install_plugins() {
  user=$(whoami)
  if [[ "${user}" == "root" ]]; then
    echo "starting install plugins..."
    dpkg-reconfigure tzdata
    apt-get install -y locales
    apt-get install -y vim
    apt-get install -y python-pip
    pip install shadowsocks
    apt-get install -y supervisor
    echo "install plugins finished."
    exit 1
  else
    echo "Please use root."
    exit 1
  fi
}

ssconfig() {
  echo "Please enter port"
  read -p "(Default port: ${port}):" tport
  [ ! -z ${tport} ] && port=${tport}
  echo "Please enter password"
   read -p "(Default password: ${password}):" tpass
  [ ! -z ${tpass} ] && password=${tpass}
  [ ! -d "/etc/ssserver" ] && mkdir /etc/ssserver

  cat > /etc/ssserver/ss.conf<<EOF
{
    "server_port":${port}
    "password":"${password}"
    "method":"aes-256-cfb"
}
EOF
  cat /etc/ssserver/ss.conf
}

ssupervisor() {
  echo "start setup supervisor..."
  [ ! -d "/etc/supervisor/conf.d" ] && mkdir -p /etc/supervisor/conf.d
  cat > /etc/supervisor/conf.d/ssserver.conf<<EOF
[program:ssserver]
command=/usr/local/bin/ssserver -c /etc/ssserver/ss.conf -vv --user nobody
stdout_logfile=/var/log/ss.log
stderr_logfile=/var/log/ss.err
stdout_logfile_maxbytes=50MB
stderr_logfile_maxbytes=50MB
autorestart=true
autostart=true
EOF
  cat /etc/supervisor/conf.d/ssserver.conf
  hasconf=$(grep "/etc/supervisor/conf.d/" /etc/supervisor/supervisord.conf | grep -v grep | wc -l)
  if [[ hasconf -ne 1 ]]; then
    echo "[include]" >> /etc/supervisor/supervisord.conf
    echo "files = /etc/supervisor/conf.d/*.conf" >> /etc/supervisor/supervisord.conf
  fi
  echo "setup supervisor finished."
}

setupserver() {
  supervisorctl update
  supervisorctl stop ssserver
  supervisorctl start ssserver
}


install_plugins
ssconfig
ssupervisor
setupserver
