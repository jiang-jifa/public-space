# 可以跳过被评价者的评价系统

- [可以跳过被评价者的评价系统](#可以跳过被评价者的评价系统)
  - [需求](#需求)
  - [现状](#现状)
  - [设计](#设计)
  - [解释](#解释)

## 需求

360 度评价，不需要被评价者自评。

## 现状

1. 系统限制：系统不会自动创建 sheet，而是由 user 触发创建 sheet。

## 设计

- 添加一个批量触发创建 sheet 的 UI/API，让 admin_user 触发创建 sheets 操作。

[![Image from Gyazo](https://i.gyazo.com/3bab5965f27ac455a4a064c6bd588add.jpg)](https://gyazo.com/3bab5965f27ac455a4a064c6bd588add)



## 解释

> 系统限制：系统不会自动创建 sheet，而是由 user 触发创建 sheet。

这个限制主要是 **性能考虑** ，将创建 sheet 的操作分散到 user 操作。

TJ: DB 应该可以承受这种级别的数据操作。