# Code Examples

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
