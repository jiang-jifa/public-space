# Design Guideline


- [Design Guideline](#design-guideline)
  - [Recommend to Read](#recommend-to-read)
  - [Others Guidelines](#others-guidelines)
  - [My Design Values (设计价值观)](#my-design-values-设计价值观)
  - [CardView](#cardview)
  - [How to show one data? (CardView, LineView)](#how-to-show-one-data-cardview-lineview)
  - [How to show data list? (ListView, GridView, TableView)](#how-to-show-data-list-listview-gridview-tableview)
  - [data List should have Chart](#data-list-should-have-chart)
  - [data List should have import and export](#data-list-should-have-import-and-export)
  - [How to get the Design Guideline done?](#how-to-get-the-design-guideline-done)
  - [UI Error Handling](#ui-error-handling)
  - [How long is good of error message?](#how-long-is-good-of-error-message)
  - [Notification color pattern](#notification-color-pattern)
  - [Make Simple Card not Complex Card](#make-simple-card-not-complex-card)
  - [Component use Flex, Layout use Grid](#component-use-flex-layout-use-grid)
  - [Responsive Design Columns](#responsive-design-columns)
  - [What is good UI? I don't say UX.](#what-is-good-ui-i-dont-say-ux)
  - [Good Design Basic](#good-design-basic)
  - [List params Design](#list-params-design)
  - [font-size](#font-size)
  - [ToB App](#tob-app)
  - [ToC App](#toc-app)
  - [Design Rules](#design-rules)
  - [UI 间距](#ui-间距)

## Recommend to Read

* https://www.producthunt.com/posts/100-ui-ux-tips
* https://www.refactoringui.com/book

## Others Guidelines

* https://developer.apple.com/design/human-interface-guidelines/#/
* https://ant.design/docs/spec/introduce-cn


## My Design Values (设计价值观)

* Simple（简洁）
* Cheerful（使心情愉悦）
* Familiar（似曾相识）

## CardView
设计参考 https://daisyui.com/components/card

默认配置是一个产品的风格，只有高级用户（1%）才需要点开配置页面。

* Card 如果有图片，图片可点击。
* Card 如果没有图片，Title 可点击。
* Card 上 action 应该尽可能少。

## How to show one data? (CardView, LineView)

CardView

* 展示必要的图片或者图标

## How to show data list? (ListView, GridView, TableView)

ListView

* 数量不会特别多
* 需要排序

![CleanShot 2022-01-18 at 16 33 02@2x](https://user-images.githubusercontent.com/17308201/149891018-44ef27db-5787-4fdf-bc0c-fbce632ffdf7.jpg)

GridView

* 数量不会特别多

![CleanShot 2022-01-18 at 16 32 07@2x](https://user-images.githubusercontent.com/17308201/149890914-db59dd82-6439-42fa-94aa-21ca4a35180a.jpg)

> Don't use Pagination, use load more.


TableView

* 需要对比数据的属性

![CleanShot 2022-01-18 at 16 31 14@2x](https://user-images.githubusercontent.com/17308201/149890823-0755f358-888d-4f3a-ae8d-8c884cb89de2.jpg)


## data List should have Chart

## data List should have import and export

## How to get the Design Guideline done?

1. 编写基本的 Design Guideline
2. 针对数据，编写 How to choose a UI Component?
3. 针对页面，编写 How to compose UI Components?
4. 整理功能，分担设计。
5. 整理功能，分担开发。需要 Storybook

## UI Error Handling

* 4xx Error: show How to do fix
  * input scope: nearly the input
  * form scope: nearly the submit button
* 5xx Error: show the reason and how to leave

> 如果是复杂的form，应该给用户提供跳转UI（锚），像日本的部分表单一样。

## How long is good of error message?

各バリデーションでは、どの程度細かくメッセージを設定した方が良いでしょうか。

たとえばパスワードであれば、
* A) 「8文字以上」、「16文字以下」、「1文字以上の英字を含む」、「1文字以上の数字を含む」、それぞれ異なるメッセージとする
* B) 「パスワードは8文字以上16文字以下で、英数字を混在させてください」と条件をまとめたメッセージとする
* C) 「パスワードの値が不正です」とメッセージから詳しい原因を分からないようにする

> B

## Notification color pattern

1. new notification unread - `yellow`
2. read but not open - `white`
3. opened - `gray`
4. :hover - same as table row:hover

> -> Gmail


## Make Simple Card not Complex Card

* 清爽


## Component use Flex, Layout use Grid

* https://ishadeed.com/article/grid-layout-flexbox-components/#/

## Responsive Design Columns

* 24 columns
* Mobile least 2 columns, 1 columns is not beautiful.
* (SP)2 columns -> (Tablet)4 columns -> (PC)6 columns

## What is good UI? I don't say UX.

* The user didn't use the app, but they like it.
* The user didn't use the app, but they want to try.
* The user didn't use the app, but they share with their friends.


## Good Design Basic

* 统一性

## List params Design

* add/remove icon
* draggable

## font-size

## ToB App

- text-large 46px
- text-medium 24px
- text-lg 16px
- text-base 14px
- text-sm 12px

![image](https://user-images.githubusercontent.com/17308201/154197523-877eff10-d210-4614-9b01-a1204a891b0c.png)

https://ant.design/docs/spec/font-cn#%E5%AD%97%E9%98%B6%E4%B8%8E%E8%A1%8C%E9%AB%98

## ToC App

- text-large 3rem
- text-medium 1.5rem
- text-lg 1.125rem
- text-base 16px 1rem
- text-sm 0.875rem
- text-xs 0.75rem

https://tailwindcss.com/docs/font-size

细节：

1. 注意：font-size 必须配合 line-height 一起使用

## Design Rules

PC Layout: 1440px

适配

![](https://gw.alipayobjects.com/zos/rmsportal/vSqMhPolCtINKLvVVdLt.png)

![](https://gw.alipayobjects.com/zos/rmsportal/VQEiJqtZfvvdyZSKcEsE.png)

https://ant.design/docs/spec/layout


## UI 间距

一般的 Design System 中通常会定义 Large, Medium, Small。

如何使用呢？

例如：

* 不相同的区域：Large
  * 页面标题和搜索区域，搜索区域和数据展示区域
* 相同区域的不同内容：Medium
  * Form 的 input
* 相同内容的不同元素：Small
  * Form DataRange UI

![CleanShot 2021-12-23 at 18 29 00@2x](https://user-images.githubusercontent.com/17308201/147219667-7ede6bb1-501f-414e-8679-52a47eb54498.jpg)
