# Frontend Code Style Guide

## date-picker

* Mobile: use HTML native input[type=date]
* PC: use HTML native input[type=date]

> 关键在于，是否为 date-range 提供专用 UI Component？
> 推荐仅封装 before <= after 逻辑，不要控制 UI。

> 实际客户需求。

## encodeURIComponent

为了避免服务器收到不可预知的请求，对任何用户输入的作为URI部分的内容你都需要用encodeURIComponent进行转义。

比如，一个用户可能会输入"Thyme &time=again"作为comment变量的一部分。
如果不使用encodeURIComponent对此内容进行转义，服务器得到的将是comment=Thyme%20&time=again。

> encodeURI 自身无法产生能适用于HTTP GET 或 POST 请求的URI，例如对于 XMLHTTPRequests, 因为 "&", "+", 和 "=" 不会被编码，然而在 GET 和 POST 请求中它们是特殊字符。然而encodeURIComponent这个方法会对这些字符编码。

## rem vs. em vs. px

90% 使用 rem，10% 使用 em，不使用 px。

em 只能使用在最后一层。
https://twitter.com/ThaddeusJiang/status/1488368590957199360?s=20&t=-4kIARh69goC7YV6je4Kdw

## Show error message, not exception

Frontend 可以报错，但是不要崩溃。

- Good: [![Image from Gyazo](https://i.gyazo.com/50047913c88f18b27aed9d7ea975916e.jpg)](https://gyazo.com/50047913c88f18b27aed9d7ea975916e)

- Bad: [![Image from Gyazo](https://i.gyazo.com/389208f243d89b7327a79ded4ddb5e39.jpg)](https://gyazo.com/389208f243d89b7327a79ded4ddb5e39)