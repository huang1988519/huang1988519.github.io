---
title: ShadowsocksR
date: 2017-11-20 23:23:44
tags:
---

技术一枚，经常需要找梯子。之前用的
## 注册搬瓦工
[传送门](bandwagonhost.com/clientarea.php)

## 选择套餐
这个按需购买就买，只是拿来翻墙搭个简单网站，选个最便宜的就好。当前最便宜的套餐价格为 `$29.99 `USD Annually.且支持 `CN2`线路。

![选择套餐](/2017/11/20/ShadowsocksR/select.png)

在此界面时，使用浏览器的查看源码功能，可以找到一个优惠码。

``` html
<div style="display:none;" id="easter">
Try this promo code: BWH1GFWZP
</div>
```

### 配置VPS

#### 进入VPS界面

`Services - My Services - KiwiVM Control Pannel`

#### 安装 SSR 服务
在 KiwiVM 界面，选择 `KiwiVN Extras - ShadowsocksR Server`

然后点击安装。
等待几分钟会提示安装完成。  
>  需要注意，安装完成后，需要重启 VPS，否则就算你在客户端配置正确，依然是无法翻墙。

此处 vps + ssr 安装就完成了，剩下的安装对应平台的客户端即可。

## ShadowsocksR 客户端下载

[windows客户端](/2017/11/20/ShadowsocksR/ShadowsocksR-4.7.0-win.7z)

[Android客户端](/2017/11/20/ShadowsocksR/ssr-3.4.0.6.apk)

[MacOS客户端](/2017/11/20/ShadowsocksX-NG-R8.dmg)

iOS
* [Shadowroket ](https://itunes.apple.com/us/app/shadowrocket/id932747118) `$2.99`
* [Wingy free](https://itunes.apple.com/us/app/wingy-http-s-socks5-proxy-utility/id1178584911?mt=8) 不支持中国区，本人在用。
