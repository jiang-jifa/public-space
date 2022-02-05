# React.js 必会


## i18n/react-i18next Interpolation (插值)

Q:

* Singular and Plural, like: `1 day, 10 days`
* Replace value, like: `This year is 2022.`


## React Error Boundary

https://github.com/bvaughn/react-error-boundary

## 完全理解 React Hook

https://overreacted.io/zh-hans/a-complete-guide-to-useeffect/

1. 每次渲染都有它自己的所有。
  1. 单次渲染中 props 和 state 是不变的。
  2. 所以组件内何时读取 props 和 state 没有任何区别
2. useEffect 在浏览器渲染后被调用，而不是 render() 。

useEffect 读取当次渲染的值，而不是最新，想读取最新可以使用 refs，但是这是 `逆流而动`。

建议：

1. 仅在 useEffect 中使用的函数可以移动到 useEffect 中。
2. 不依赖 component 的函数可以移动到 component 外。

对于 React Hooks，mount 和 update 对于 render() 没有任何区别。

如何精简 useEffect 依赖？

  - 描述意图，而不是结果。使用 setState(c => c + 1) 取代 setState(c + 1)
  - 使用 useReducer 可以减少 useEffect 过度依赖，因为 React 保证 dispatch 在声明周期内不变。而且可以实现行为和实现分离。