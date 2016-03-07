title: Swift 自定义运算符
date: 2016-02-17 16:36:24
tags: swift operator,ios,Swift
---
## Swift 自定义运算符

网上无意中看到一个开源库  [Arrow](https://github.com/s4cha/Arrow)。  
[官方文档](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/AdvancedOperators.html)  [参考](http://nshipster.com/swift-operators/)

通过重写运算符<--, <==，来解析json。例如：   

``` Swift
identifier <-- json["id"]
name <-- json["name"]
stats <== json["stats"]
```
之前，我们也许是这样的。
``` Swift
if let id = json["id"] as? Int {
  identifier = id
}
if let n = json["name"] as? String {
  name = n
}
if let s = Stats(json:json) {
  stats = s
}
```

Swift 的到来，引起了iOS圈内新一轮热潮，据说国外80%的项目已经再用swift写，而个人对国内的了解，很多大的公司还是很保守。BAT也不例外。
来看看swift其中一个令人沸腾的特性之一，定义 运算符。（很多语言早已经有了这个特性）。

我们自定义运算符，尽量避免已有运算符： * + - & | ~ 等等。

##### 现在Arrow中对运算符的使用：
1. 要在swift中创建一个运算符，首先需要声明  
 ```
 infix operator <-- {infix-operator-attributes­o}
 //infix-operator-attributes­o 可选
 ```
 - **infix**  中缀。有左、右参数
 - **operator**  保留字。
 - **<---** 操作符本身。  

 > {}中可以定义一些运算符的描述。

  如果这种方式勾起了你的兴趣，咱们在看他的实现。

2. 现在运算符已经被系统识别，运算符具体实现。
 ```
 public func <-- <T>(inout left: T, right: AnyObject?) {
    if let v: T = right as? T {
        left = v
    }
}
 ```
 应该可以看出来和普通的func没什么区别。不过 **inout**这个是高亮，我就查了下文档。**inout** 放在参数的前边，表示 left这个参数在scope中可以被修改。 这样我就通过Model的属性的类型T来进行对应的转换，而不用显式的
 ```
 if let id = json["id"] as? Int {
 }
 ```
 来进行判断并赋值。

 好了，完了。简单的使用就完了，Arrow中还有一些指定类型的重载。

 ```
 public func <-- (inout left: NSDate, right: AnyObject?) {
    if let s = right as? String, let date = dateFormater.dateFromString(s)  {
        left = date
    }
}
 ```

 通过 AnyObject 转换字符串，字符串在转换到 NSDate。延伸后，我们可以根据自己的业务，来把服务器数据进行定制后来赋值。

 赞！
