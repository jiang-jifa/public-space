# React Level03勉強資料

- [React Level03勉強資料](#react-level03勉強資料)
  - [reactjs Context API](#reactjs-context-api)
  - [簡単な Custom Hook を書ける](#簡単な-custom-hook-を書ける)
  - [React Hard parts](#react-hard-parts)
    - [React Hooks を完全に理解する](#react-hooks-を完全に理解する)
    - [useEffect tip: don't](#useeffect-tip-dont)
    - [Composition vs Inheritance](#composition-vs-inheritance)
    - [immutable data](#immutable-data)
  - [Good JavaScript Code Style](#good-javascript-code-style)

## reactjs Context API
1. [Context – React](https://reactjs.org/docs/context.html)
2. [useContext | Hooks API Reference – React](https://reactjs.org/docs/hooks-reference.html#usecontext)
3. [Use Hooks + Context, not React + Redux - LogRocket Blog](https://blog.logrocket.com/use-hooks-and-context-not-react-and-redux/)

以下の質問に答える
* React Context API とは?
  * Context オブジェクト とは?
  * Context Provider とは?
  * Context Consumer とは?
* useContext() の使い方?


## 簡単な Custom Hook を書ける

doc: https://reactjs.org/docs/hooks-custom.html

how to test Custom Hook?

質問

* Custom Hook と普通な Hook 何か違う？
* Custom 中に API を使う時、如何テスト？

[useTheme]() を読んで、レビューを書く、正しいかどうか？

## React Hard parts

### React Hooks を完全に理解する
doc: https://overreacted.io/a-complete-guide-to-useeffect/

質問：

* how to clean useEffect dependence?

### useEffect tip: don't

- [Goodbye, useEffect: David Khourshid](https://www.youtube.com/watch?v=HPoC-k7Rxwo)

### Composition vs Inheritance

- [Composition vs Inheritance](https://reactjs.org/docs/composition-vs-inheritance.html)
- [Using Composition in React to Avoid "Prop Drilling"](https://www.youtube.com/watch?v=3XaXKiXtNjw)

### immutable data

* https://reactjs.org/docs/rendering-elements.html#updating-the-rendered-element
* https://reactjs.org/docs/optimizing-performance.html#the-power-of-not-mutating-data

## Good JavaScript Code Style

Recommend:

* [JavaScript Standard Style](https://standardjs.com/rules.html)
* [Airbnb JavaScript Style Guide() {](https://github.com/airbnb/javascript)

> don't recommend Google style.

Bad code small:

[25种代码坏味道总结+优化示例](https://juejin.cn/post/6962812178537644063)