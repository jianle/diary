Table of Contents
===  

* [Java Interviews](https://dongchuan.gitbooks.io/java-interview-question/content/)
* <a href="#深入理解java内存模型">深入理解Java内存模型</a>
* [JVM](#jvm)

深入理解Java内存模型
===

基础
---

* 并发编程模型的分类  
  * 共享内存 (Java)
  * 消息传递

* Java内存模型的抽象  
JMM - Java 内存模型<br/>
Java中，所有实例域、静态域、数组元素都是存储在堆内存中，堆内存在线程之间共享。<br/>

* 重排序
  * 编译器优化的重排序
  * 指令级并行的重排序
  * 内存系统的重排序

* 处理器重排序与内存屏障指令
* Happens-before


JVM
---

* [JAVA类的加载机制](http://www.cnblogs.com/ityouknow/p/5603287.html)
* [JVM内存结构](http://www.cnblogs.com/ityouknow/p/5610232.html)
* [GC算法，垃圾收集器](http://www.cnblogs.com/ityouknow/p/5614961.html)
* [JVM调优 - 命令](http://www.ityouknow.com/java/2016/01/01/jvm%E8%B0%83%E4%BC%98-%E5%91%BD%E4%BB%A4%E7%AF%87.html)
* [Tomcat性能调优和性能监控](http://www.cnblogs.com/ityouknow/p/5378874.html)
* [JVM调优从Eclipse开始](http://www.cnblogs.com/ityouknow/p/5647513.html)
* [JVM调优 - 工具](http://www.ityouknow.com/java/2017/02/22/jvm-tool.html)
* [JVM总览 - 高级JAVA工程师必备](http://www.ityouknow.com/java/2017/03/01/jvm-overview.html)
