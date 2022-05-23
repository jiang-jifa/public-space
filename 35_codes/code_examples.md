# Code Examples

- [Code Examples](#code-examples)
  - [Grid View - load more](#grid-view---load-more)
  - [Java 如何实现多语言？](#java-如何实现多语言)
  - [JS 如何优雅地展示数组数据？](#js-如何优雅地展示数组数据)
  - [Form Validate Timing](#form-validate-timing)
  - [permissions](#permissions)
  - [测试代码应该自己清理测试数据，以防止测试用例相互影响。](#测试代码应该自己清理测试数据以防止测试用例相互影响)
  - [`esc` close Modal](#esc-close-modal)
  - [`esc` quit edit mode](#esc-quit-edit-mode)
  - [sample input should off `autocomplete` feature](#sample-input-should-off-autocomplete-feature)
  - [如果使用 library，就尽量不要覆盖 library 的内容](#如果使用-library就尽量不要覆盖-library-的内容)
  - [UIUX textarea height](#uiux-textarea-height)
  - [Grid](#grid)
  - [Space](#space)
  - [font-family for Japanese web](#font-family-for-japanese-web)
  - [UserCard](#usercard)
  - [FrontendTips - windows font-weight:500 不起作用](#frontendtips---windows-font-weight500-不起作用)
  - [error_handling - Error vs. Exception](#error_handling---error-vs-exception)
  - [API 400](#api-400)

## Grid View - load more
https://react-query.tanstack.com/guides/infinite-queries

## Java 如何实现多语言？

Elixir 可以实现，https://github.com/elixir-gettext/gettext


## JS 如何优雅地展示数组数据？

Intl.ListFormat
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl/ListFormat

```js
const vehicles = ['Motorcycle', 'Bus', 'Car'];

const formatter = new Intl.ListFormat('en', { style: 'long', type: 'conjunction' });
console.log(formatter.format(vehicles));
// expected output: "Motorcycle, Bus, and Car"

const formatter2 = new Intl.ListFormat('zh', { style: 'short', type: 'disjunction' });
console.log(formatter2.format(vehicles));
// expected output: "Motorcycle、Bus或Car"
```

## Form Validate Timing

- 第一次 submit 前，输入结束前，不要显示 error_message，真的很烦人。
- submit 后显示 error_message。
- 第一次 submit 后，error_message 可以实时更新。
- form invalid 要 disable submit button。


## permissions

不要等到用户使用时才获取 permissions，应该在用户登录时就获取完整的 permissions 然后保存在内存/内存数据库中。可以提高性能。
如果修改某些用户的 permissions，只需要更新一下数据。

## 测试代码应该自己清理测试数据，以防止测试用例相互影响。

`test.only`

## `esc` close Modal
## `esc` quit edit mode

## sample input should off `autocomplete` feature


## 如果使用 library，就尽量不要覆盖 library 的内容

like: Antd Input and Button has `size`

https://git.nisshin-dev.work/smartcompany/smartcompany-front/-/merge_requests/2334/diffs#note_24304


## UIUX textarea height

OK:

- 在可接受的范围内（min-rows ~ max-rows），自适应高度。

NG:

- 在 SessionStorage / LocalStorage 中保存 textarea height。


## Grid

- responsive design: xs, sm, md, lg, xl, xxl
- gutter + span

```
<Row>
    <Col xs={2} sm={4} md={6} lg={8} xl={10}>
      Col
    </Col>
    <Col xs={20} sm={16} md={12} lg={8} xl={4}>
      Col
    </Col>
    <Col xs={2} sm={4} md={6} lg={8} xl={10}>
      Col
    </Col>
  </Row
```

```
<Row gutter={[32, 16]}>
  <Col span={2} />
  <Col span={2} />
  <Col span={2} />
  <Col span={2} />
  <Col span={2} />
  <Col span={2} />
  <Col span={2} />
  <Col span={2} />
  <Col span={2} />
  <Col span={2} />
  <Col span={2} />
  <Col span={2} />

  <Col span={2} />
  <Col span={2} />
  <Col span={2} />
  <Col span={2} />
  <Col span={2} />
  <Col span={2} />
  <Col span={2} />
  <Col span={2} />
  <Col span={2} />
  <Col span={2} />
  <Col span={2} />
  <Col span={2} />
</Row>
```

## Space

水平

```
<Space size={size}>
  <Button type="primary">Primary</Button>
  <Button>Default</Button>
  <Button type="dashed">Dashed</Button>
  <Button type="link">Link</Button>
</Space>
```

垂直

```
<Space direction="vertical">
  <Card title="Card" style={{ width: 300 }}>
    <p>Card content</p>
    <p>Card content</p>
  </Card>
  <Card title="Card" style={{ width: 300 }}>
    <p>Card content</p>
    <p>Card content</p>
  </Card>
</Space>
```


## font-family for Japanese web

```
font-family: Hiragino Sans, Meiryo, Roboto, RobotoDraft,YuGothic, Osaka, -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Helvetica Neue', Arial,
  'Noto Sans', sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol',
  'Noto Color Emoji';
```

Why?

1. Hiragino Sans - for Apple
2. Meiryo - for Microsoft
3. Roboto - for Google
4. YuGothic and Osaka for Japanese
5. following font-family of Ant.Design

## UserCard

一个系统通常需要很多 UserCard，以及 UserPopover。


## FrontendTips - windows font-weight:500 不起作用

经过验证，
MacOS 下 -apple-system 字体也不支持 font-weight: 500。
所以，不在执着 500 了，修改 UI Guideline ，我们系统只使用 400 和 600。

![CleanShot 2022-03-24 at 18 14 43](https://user-images.githubusercontent.com/17308201/159883832-e508b5e7-b298-4c6b-aebb-8ec984c8ee5a.gif)

## error_handling - Error vs. Exception

* 真的需要 custom 5xx error_code 吗？
* 什么时候需要展示 custom 5xx error_code？
* 就算需要 custom 5xx error_code，有必要提前设计吗？最起码 Agile 的功能概要设计时，我不能整理出全部的异常情况。

---

【Q】Error 和 Exception 一样吗？

不一样。

Error 通常是请求方错误导致的，Exception 通常是受理方的问题。

【场景】一个人创建一个 account，但是 account ID 已经存在了。如何返回？

note.com response `HTTP 201` 不是 Error。的确如此。

![CleanShot 2022-01-20 at 23 23 05@2x](https://user-images.githubusercontent.com/17308201/150356799-2cf9639e-c6c1-4ff7-80ce-0e9489387745.jpg)
![CleanShot 2022-01-20 at 23 23 20@2x](https://user-images.githubusercontent.com/17308201/150356820-529b1699-b1f5-40b3-8598-480fe942c1e4.jpg)

所以，5xx 的确只需要处理 Exception 就可以了。

## API 400

Ruby on Rails 是如何实现的？ RedwoodJS 是如何实现的？为什么要自己处理？像 RemixRun PhoenixFramework 之类的 framework 应该某人提供这种 API。

常规

```js
{
  "statusCode": 400,
  "statusMessage": "Bad Request",
  "message": "Bad Request",
   "errors": ... // optional, string | object | array
}
```

设计参考
- coda API https://coda.io/developers/apis/v1#operation/createDoc
- GitHub REST API https://docs.github.com/en/rest/overview/resources-in-the-rest-api#client-errors



```js
// GitHub errors sample
HTTP/2 422
Content-Length: 149

{
  "message": "Validation Failed",
  "errors": [
    {
      "resource": "Issue",
      "field": "title",
      "code": "missing_field"
    }
  ]
}
```