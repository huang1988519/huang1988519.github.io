title: iOS开源项目收集
date: 2015-11-05 15:08:16
tags:
---

平时自己使用或者看过的iOS代码，收集于此，于己于人方便.

项目会先在github 更新，之后迁移到github.io 上  [github 地址](https://github.com/huang1988519/Collector)

** 其他项目总结 **
- [TimLiu-iOS](https://github.com/Tim9Liu9/TimLiu-iOS#%E4%B8%8B%E6%8B%89%E5%88%B7%E6%96%B0) github iOS排行榜
- [open-source-library-tags](https://github.com/superleexpert/open-source-library-tags) 佳宾同学自己项目总结
- [SwiftGuide](https://github.com/ipader/SwiftGuide/blob/master/Featured.md) Swift 开源项目精选
- [Github-iOS备忘 ](http://github.ibireme.com/github/list/ios/) 分类、折叠查看  开源项目总结

** 目录 **

## UI
- 下拉刷新

  * [MJRefresh](https://github.com/CoderMJLee/MJRefresh#%E4%B8%8A%E6%8B%89%E5%88%B7%E6%96%B007-%E8%87%AA%E5%8A%A8%E5%9B%9E%E5%BC%B9%E7%9A%84%E4%B8%8A%E6%8B%8901) 国内人开发，由于还没使用过，看文档先列出来几点有点
     * 自定义程度高（文字，动图，heade、footer 等等）
     * 易使用
     * 中文文档，目前已经 4000 多 star

 * [SVPullToRefresh](https://github.com/samvermette/SVPullToRefresh) 应该算本人使用比较早的一个下拉，上拉刷新，api 较少，使用方便

- 音视频播放
  * [KRVideoPlayer](https://github.com/36Kr-Mobile/KRVideoPlayer)
  类似Weico的播放器，支持竖屏模式下全屏播放。支持 pod 安装使用
      ``` shell
      pod search KRVideoPlayer
      ```
      使用MPMoviePlayer进行视频播放，自定义控制层 来控制视频的暂定，播放，前进后退等等

      ![示例图片](https://github.com/36Kr-Mobile/KRVideoPlayer/blob/master/kr_player.gif  "示例图片")
  * 下一个效果
- 图片相关  
  * [Nuke (Swift)](https://github.com/kean/Nuke) 图片 下载、loading、缓存 的一个先进、轻量库
- 模糊效果
- AutoLayout

## 数据
- 数据  
  * [razor](https://github.com/cobub/razor) 开源 统计平台，包含 web , ios ,Android,wp 端代码  
  * [SigmaSwiftStatistics](https://github.com/evgenyneu/SigmaSwiftStatistics) lauguage: Swift 。 数学复杂计算  
  * [CryptoSwift](https://github.com/krzyzanowskim/CryptoSwift) 语言：Swift 。 主流的几种加密
    * require

      一个好的心情
    * 功能

      ** Hash **
        - MD5
        - SHA1
        - SHA224
        - SHA256
        - SHA384
        - SHA512
        - CRC32 (well, kind of hash)
        - CRC16 (well, kind of hash)

      ** Cipher **
        - AES-128, AES-192, AES-256
        - ChaCha20

      ** Message authenticators **
        - Poly1305
        - HMAC MD5, SHA1, SHA256

      ** Cipher block mode **
        - Electronic codebook (ECB)
        - Cipher-block chaining (CBC)
        - Cipher feedback (CFB)
        - Counter (CTR)

      ** Data padding **
        - PKCS#7

    * 为什么要用swift 再写一次在很多平台都有的功能

      因为我可以！  
      > Why? Becanse I can.


## 选择器
- 时间选择器
- 其他选择器
  * [城市列表](https://github.com/CharlinFeng/CFCityPickerVC) 带有当前城市，
  热门城市，和按省分类列表

## 教学
- 示例
  * [C-41](https://github.com/ashfurrow/C-41/tree/82d9359a0210b8722c48816b6914d109a2009bcc)   这个app的功能不重要，重要的是演示了如何使用下边功能
    * Core Data
    * Unit Test
    * ReactiveCocoa
    * Model-View-ViewModel
  * [MessageDisplayKit](https://github.com/xhzengAIB/MessageDisplayKit)
    一个类似微信App的IM应用，拥有发送文字、图片、语音、视频、地理位置消息，管理本地通信录、分享朋友圈、漂流交友、摇一摇和更多有趣的功能
    支持 pod
    ``` CocoaPods
    pod 'MessageDisplayKi
    ```

    ![示例图片](https://github.com/xhzengAIB/LearnEnglish/raw/master/Screenshots/MessageDisplayKit.gif "图片")

  * [程序员简历模板](https://github.com/geekcompany/ResumeSample) 程序员简历模板系列。
    * PHP程序员简历模板
    * iOS程序员简历模板
    * Android程序员简历模板
    * Web前端程序员简历模板
    * Java程序员简历模板
    * C/C++程序员简历模板
    * NodeJS程序员简历模板
    * 架构师简历模板
    * 通用程序员简历模板

## 总有点别的爱好
- 宅男

  * [jav-scrapy](https://github.com/raawaa/jav-scrapy)
    一个可以爬取 AV 磁力链接或影片封面的小爬虫。使用Nodejs
    ``` shell
    $ git clone https://git.coding.net/raawaa/jav-scrapy.git
    $ cd jav-scrapy
    $ npm install # 安装npm包依赖
    $ npm link    # 使jav-scrapy全局可执行
    ```

## 博客
- 架构设计

  * [博客中谈了较多架构层的干货，可以关注下](http://casatwy.com/category/blog.html)
    * [iOS应用架构谈 开篇](http://casatwy.com/iosying-yong-jia-gou-tan-kai-pian.html)
    * [iOS应用架构谈 view层的组织和调用方案](http://casatwy.com/iosying-yong-jia-gou-tan-viewceng-de-zu-zhi-he-diao-yong-fang-an.html)
    * [iOS应用架构谈 网络层设计方案](http://casatwy.com/iosying-yong-jia-gou-tan-wang-luo-ceng-she-ji-fang-an.html)
    * [iOS应用架构谈 本地持久化方案及动态部署](http://casatwy.com/iosying-yong-jia-gou-tan-ben-di-chi-jiu-hua-fang-an-ji-dong-tai-bu-shu.html)

  * [iOS大型项目开发漫谈](http://www.jianshu.com/p/921ab32c3c71) cp  个人见解总会有很多地方值得  
  * [iOS 保持界面流畅的技巧](http://blog.ibireme.com/2015/11/12/smooth_user_interfaces_for_ios/)  专业的界面调优，下面简单列几条概要
    * CPU 资源消耗原因和解决方案 （分析）
    * GPU 资源消耗原因和解决方案  （分析）
    * AsyncDisplayKit （解决方案）
    * 微博 Demo 性能优化技巧 （示例讲解）  

- 干货  
  * [伽蓝之堂](http://blog.ibireme.com/)
    干货之多，受益无穷。大量自己实践总结，优秀国际技术翻译引进。**举例：**
    * [iOS 保持界面流畅的技巧](http://blog.ibireme.com/2015/11/12/smooth_user_interfaces_for_ios/)
    * [深入理解RunLoop](http://blog.ibireme.com/2015/05/18/runloop/)
    * [颜色模型](http://blog.ibireme.com/2013/08/12/color-model/)
