Scala入门到精通
===

[第一节 Scala语言初步](https://yq.aliyun.com/articles/60363)
---

scala是Martin Odersk于2001年开发，可用于大规模应用程序开发，也可用于脚本编程。

特点
* 简洁
* 优雅
* 类型安全

运行环境
* JVM
* .Net

[第二节 基本类型及操作、程序控制结构](https://yq.aliyun.com/articles/60392)
---

* 基本类型  
![](../pictures/scala-2-0.jpg)  
数据类型与JAVA一一对应，特点 **首字母大写**  

* 运算符优先级  
![](../pictures/scala-2-1.jpg)


* 程序控制结构  
  * if
  * while
  * where
  * do while
  * for（to/until 区别）


[第三节 Array、List](https://yq.aliyun.com/articles/60391)
---

* 数组Array操作
  * 定长数组(Array)
  * 变长数组(ArrayBuffer)
  * 数组遍历
  * 数组转换
  * 多维数组

* 列表List操作
  * 类型定义
  * List一旦创建，不可改变
  * List伴生对象
  * List常用操作(`isEmpty`、`head`、`tail`、`last`、`reverse`、`drop`、`take`、`mkString`)

[第四节 Set、Map、Tuple、队列操作实战](https://yq.aliyun.com/articles/60390)  
---

scala中所有集合都来自scala.collection包及其子包`mutable`(可变集合)、`immutable`(不可变集合)当中，scala默认使用`immutable`集合，如要使用`mutable`需要在程序中引入
```  
import scala.collection.mutable
val mutableSet = mutable.Set(1, 2, 3)
```

scala.collection包中集合类层次结构：

![](/pictures/scala-4-0.jpg)  

scala.collection.immutable类层次结构：  
![](/pictures/scala-4-1.jpg)  

scala.collection.mutable类层次结构：
![](/pictures/scala-4-2.jpg)  

可变集合与不可变集合对应关系：
![](/pictures/scala-4-3.jpg)  
