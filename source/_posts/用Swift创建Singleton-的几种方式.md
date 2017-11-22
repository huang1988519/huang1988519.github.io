title: 用Swift创建Singleton 的几种方式
date: 2015-12-29 11:47:01
tags: [Swift],[iOS]
---

单例，作为日常中出场率较高的设计模式，还是值得单独一篇文章来列举下常见的创建方式。

Objective-C 下，一般是这么创建 单例  
```
@interface Persion : NSObject
@end

@implementation Persion

+ (instancetype)sharedInstance {
    static Persion *sharedInstance = nil;
    static dispatch_once_t onceToken;

    dispatch_once(&onceToken, ^{
        sharedInstance = [[Persion alloc] init];
    });
    return sharedInstance;
}

@end
```
在使用单例时，我们需要知道
* 单例是全局唯一。 在程序的生命周期中，不管在何处使用 ，都应该是同一个对象。
* 确保单例的唯一性，需要是初始化方法私有化。这样的话，需要我们重载类的所有初始化方法
* 也因为第一条，在生命周期中只有唯一一个，就意味着我们需要确保单例的线程安全。

--- 不多说，下面列举几种swift 单例的创建方法

#### 先来一段比较丑的创建方式
```
class TheOneAndOnlyPerson {
    class var sharedInstance: TheOneAndOnlyPerson {
        struct Static {
            static var onceToken: dispatch_once_t = 0
            static var instance: TheOneAndOnlyPerson? = nil
        }
        dispatch_once(&Static.onceToken) {
            Static.instance = TheOneAndOnlyPerson()
        }
        return Static.instance!
    }
}
```
这有点违背了swift的简洁风格了吧~~pass（反正不推荐）

#### 结构体创建方式
```
class TheOneAndOnlyPerson {
    class var sharedInstance: TheOneAndOnlyPerson {
        struct Static {
            static let instance = TheOneAndOnlyPerson()
        }
        return Static.instance
    }
}
```
#### 全局创建 方式
```
private let sharedPerson = TheOneAndOnlyPerson()
class TheOneAndOnlyPerson {
    class var sharedInstance: TheOneAndOnlyPerson {
        return sharedPerson
    }
}
```
#### 一行创建单例 (推荐)
```
class TheOneAndOnlyPerson {
    static let sharedInstance = TheOneAndOnlyPerson()
}
```

> 不要忘了重载类的初始化方法
