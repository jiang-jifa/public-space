# React Level02勉強資料

- [React Level02勉強資料](#react-level02勉強資料)
  - [react-router](#react-router)
  - [多言語対応(国際化)/react-i18next](#多言語対応国際化react-i18next)
  - [react-query](#react-query)
  - [Promise を理解する](#promise-を理解する)
    - [Version Page を react-query で書き換える](#version-page-を-react-query-で書き換える)

## react-router
1. [reactrouter公式ウェブサイト](https://reactrouter.com/)

以下の質問に答える
* react-router,react-router-dom,react-router-native とは?
* BrowserRouter と HashRouter の区別は?
* Router,Link,Route,Switch,Redirect とは?
* MemoryRouterとは?
* children,component,render の優先順位は?
* exactはいつ使うの？
* 404ページはどこ置いての？
* 動的ルーティング とは?
* ネストされたルート とは?



## 多言語対応(国際化)/react-i18next
* [ドキュメンテーション](https://react.i18next.com/)

以下の質問に答える
* resources,lng,fallbackLng とは？
* 翻訳対象の指定方法は？
* 指定した言語に切り替えりたい場合、どうの方法を使うの？
* 辞書ファイル(resource)はどのファイルタイプ？
* 数字の単数と複数を実装してください、例：`1 day, 10 days`
* 内容を書き換える、例：`今年は 2022 年、今月は 1 月`


## [react-query](https://github.com/tannerlinsley/react-query)

## Promise を理解する

![JavaScript Promise](https://mdn.mozillademos.org/files/8633/promises.png)

问题：

```js
const fetchData = async (url) => await API.getData(url)

const res = fetchData(url)
// res は何ですか？
```

### Version Page を react-query で書き換える

Don't worry, react-query is super easy.

以下の質問に答える

* react-query `isError, isIdle, isLoading, isPaused, isSuccess` は何か違う？
* react-query `onError, onSettled, onSuccess` は何か違う？
* react-query `queryClient.invalidateQueries` と `queryClient.refetchQueries` は何か違う？

