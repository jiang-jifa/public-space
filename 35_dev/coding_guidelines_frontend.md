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

## URL 使用连接线，例如：https://vercel.com/account/login-connections

GitHub 和 Twitter 使用下划线设计，不过他们最开始都是 ruby on rails 开发的。

```
https://github.com/settings/deleted_packages

https://twitter.com/settings/privacy_and_safety
```

Vercel 和 Airbnb 使用中划线

```
https://vercel.com/account/login-connections

https://www.airbnb.com/coron-island-philippines/stays
```
也说的通，因为很多时候空格会被当成连接线处理。

看来 JS 社区喜欢连接线。

![CleanShot 2022-06-11 at 11 23 52](https://user-images.githubusercontent.com/17308201/173169094-1f66ee19-83d8-4cda-9a42-b2844df3f51d.png)

DB table column 如何处理两个单词呢？

* RDB: JS 社区喜欢 camelCase，Ruby 社区喜欢 snake_case。
* NoSQL: 可以使用 PascalCase

> BTW URL 和 DB column name 没有关系，有时候和 DB table name 有关系，例如：accounts

## What are valid table names in SQLite?

https://stackoverflow.com/questions/3694276/what-are-valid-table-names-in-sqlite

```
abc123 - valid
123abc - not valid
abc_123 - valid
_123abc - valid
abc-abc - not valid (looks like an expression)
abc.abc - not valid (looks like a database.table notation)
```

好像也没有办法统一，不过尽量吧。

1. URL: kebab-case, like: `blog-articles`
2. DB
   1. RDB table and column: snake_case, like: `blog_articles` and `created_at`
   2. NoSQL table:  PascalCase, like: `BlogArticles`.
   3. NoSQL column: camelCase, like: `createdAt`.


## Frontend routes

frontend 401 page: 没有登录

对于 ToB 系统，没有登录意味着不能完成绝大多数功能，跳转到 login 页面好像没什么不好。

frontend 403 page: 没有权限

如果只是单个 API 没有权限，不应该跳转页面。

设计原则：不擅自修改用户的输入（包括 URL）