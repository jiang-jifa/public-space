# UIUX设计参考

- [UIUX设计参考](#uiux设计参考)
  - [编辑 vs. 不可编辑](#编辑-vs-不可编辑)
  - [No Data](#no-data)
    - [Table View](#table-view)
    - [List View](#list-view)
    - [Create Button when Not Found](#create-button-when-not-found)
  - [Not Found Data UI](#not-found-data-ui)
  - [simulate Mode](#simulate-mode)
  - [层级数据展示](#层级数据展示)
  - [UserGroupSelector](#usergroupselector)
  - [TopPage 的几种设计方案](#toppage-的几种设计方案)
  - [Search focus](#search-focus)
  - [FreeData fields selector](#freedata-fields-selector)
  - [AutoSave](#autosave)
  - [Form](#form)
  - [2轴对比 UI](#2轴对比-ui)
  - [Mobile: 通知列表需要全屏，用户菜单不需要](#mobile-通知列表需要全屏用户菜单不需要)
  - [Input 都可以 reset](#input-都可以-reset)
  - [Link 应该以 short link 形式显示](#link-应该以-short-link-形式显示)
  - [Pagination](#pagination)
  - [Delete 设计参考](#delete-设计参考)
  - [如何显示人数](#如何显示人数)
  - [Preview Button](#preview-button)
  - [浮标](#浮标)
  - [清爽的 Search reset UI in ListPage](#清爽的-search-reset-ui-in-listpage)
  - [UI: color input](#ui-color-input)
  - [UI: Avatar.Group](#ui-avatargroup)
  - [当 UI 上内容过多时，应该默认隐藏高级操作](#当-ui-上内容过多时应该默认隐藏高级操作)
  - [Menu for mobile and pc](#menu-for-mobile-and-pc)
- [UI：使用虚线框表示不存在的元素，例如 list 的创建按钮 #61](#ui使用虚线框表示不存在的元素例如-list-的创建按钮-61)
- [UI: placeholder 不能替代 label](#ui-placeholder-不能替代-label)

## 编辑 vs. 不可编辑

![Form 编辑 vs. 不可编辑](https://user-images.githubusercontent.com/17308201/151921586-d24dd307-8bc1-4bec-8049-86f3d3054beb.jpg)
> smartHR


## No Data

### Table View

Edit Mode
[![Image from Gyazo](https://i.gyazo.com/502c3313340f11aa1b60c62e3bb23e58.jpg)](https://gyazo.com/502c3313340f11aa1b60c62e3bb23e58)
> github project

View Mode
[![Image from Gyazo](https://i.gyazo.com/0700e8130a2ffd960de0fa762748ef0e.jpg)](https://gyazo.com/0700e8130a2ffd960de0fa762748ef0e)
> github pull request

### List View

same as Table

### Create Button when Not Found
[![Image from Gyazo](https://i.gyazo.com/dc2b662d13a885f3fae1153ad25243fc.jpg)](https://gyazo.com/dc2b662d13a885f3fae1153ad25243fc)

## Not Found Data UI

关于 Not Found UI 的设计，Not Found Data 不应该是错误，Not Found Data 是正常现象。
一味地追求统一性，让 Not Found Data UI 和 HTTP 404 Not Found 挂钩是不合理的。

ListPage
data is empty, is not Not Found, response should be `data: [], total: 0`

http status: `200`

DetailPage
data was not found, response should be `null`

http status: `200`

App 不应该自动跳转的 `/404` 页面，应该停留在用户输入的页面，然后显示数据不存在。

`/users/001` , UI: `the user is not existed!`

## simulate Mode

和 NoCode DataTable View 没有任何区别。

可以采取 left top 下拉菜单，right top save-cancel 按钮的设计。



## 层级数据展示


## UserGroupSelector

两种使用场景，
1. 选用户
2. 选团体

区别：最后的叶子结点不同。1. 用户，2. 团体。

选用户

- keyword 检索最方便。
- 选择 group 然后下方展示 users，checkbox
- 如果不行，可以自由条件组合检索。

选团体

- keyword 一般
- tree 最方便
- 不需要自由条件组合

同时选用户和选团体

- 第一步肯定是选团体，然后再选择用户。

结论：

提供简单和高级检索，类似 Backlog 和 Google

`シンプルな検索 / 高度な検索`

![CleanShot 2022-02-21 at 11 50 36](https://user-images.githubusercontent.com/17308201/154881205-35fca252-2a26-4307-a240-119b03823018.jpg)


シンプルな検索：4 SearchInput

1. keyword
2. org
3. tag
4. filter (aka. view)

检索后，下方出现 users

高度な検索：包含 BaseInfo and and Orgs and Tags 的 Filter

- 中途版：DataSheet > BaseInfo > Orgs > Tags

## TopPage 的几种设计方案

肯定是最全的的最好，但是在 API 没有支持的前提下，可以渐进式实现。

![CleanShot 2022-02-23 at 17 42 31@2x](https://user-images.githubusercontent.com/17308201/155285983-4da4e730-4291-48e8-b0ef-87a4799235b8.jpg)

![CleanShot 2022-02-23 at 17 42 37@2x](https://user-images.githubusercontent.com/17308201/155285996-8f8b901c-b69e-47dd-861a-9274b6aa64a2.jpg)

![CleanShot 2022-02-23 at 17 42 43@2x](https://user-images.githubusercontent.com/17308201/155286001-7176d318-9b00-4b02-93e1-efd0cce91731.jpg)

## Search focus

from MUJI.com

[![Image from Gyazo](https://i.gyazo.com/0f4e3f513ba1e1614144f040bd85de7d.gif)](https://gyazo.com/0f4e3f513ba1e1614144f040bd85de7d)


## FreeData fields selector

Bad:
[![Image from Gyazo](https://i.gyazo.com/9ac6452bfa1bb98cf001d1f66a0eb8a5.jpg)](https://gyazo.com/9ac6452bfa1bb98cf001d1f66a0eb8a5)

Good:
[![Image from Gyazo](https://i.gyazo.com/86997c305f51a72e2acf791c54f78fbc.jpg)](https://gyazo.com/86997c305f51a72e2acf791c54f78fbc)

要素：

- search input
- DnD

## AutoSave
参考 Google Doc

[![Image from Gyazo](https://i.gyazo.com/3598124d0e601e2f4beb3b138fd2f377.jpg)](https://gyazo.com/3598124d0e601e2f4beb3b138fd2f377)

[![Image from Gyazo](https://i.gyazo.com/efc4d9fc528917c44b22a040c5253f19.jpg)](https://gyazo.com/efc4d9fc528917c44b22a040c5253f19)

## Form

关于 Form，我希望 Form 可以表现出正式又不失灵动的直观感觉。

所以：

- 最好实现 2 列输入
    - 单纯的从上到下太单调了

不过，有一个设计师说过，form 设计，功能性要大于观赏性。

所以保持和其他系统相同的设计，能让用户没有输入负担，就像平常使用的产品一样。所以 Apple、Google、Microsoft 产品是重要的参考。

Apple
[![Image from Gyazo](https://i.gyazo.com/ec80d276668eaf1752dc8f63e21ca33d.jpg)](https://gyazo.com/ec80d276668eaf1752dc8f63e21ca33d)

Google
[![Image from Gyazo](https://i.gyazo.com/8aab9358359269406d113cbff35673b8.jpg)](https://gyazo.com/8aab9358359269406d113cbff35673b8)

~~Microsoft~~

## 2轴对比 UI

一家日本的公司设计的 UI：[https://www.itreview.jp/categories/talent-management?company_size=3#tutorial](https://www.itreview.jp/categories/talent-management?company_size=3#tutorial)

- 整体设计大方、清晰
- 动效让变化很容易理解
- 轴的渐变色很棒

[![Image from Gyazo](https://i.gyazo.com/dbb9dfa0769fe8cb357289765013053d.gif)](https://gyazo.com/dbb9dfa0769fe8cb357289765013053d)


## Mobile: 通知列表需要全屏，用户菜单不需要

[![Image from Gyazo](https://i.gyazo.com/a2ab408e7c0a84df2a73774c376751aa.jpg)](https://gyazo.com/a2ab408e7c0a84df2a73774c376751aa)

- 通知内容长度未知，可能很长。
- 菜单内容长度已知，且和 PC 效果保持一致。

## Input 都可以 reset

- radio button 可以取消
- checkbox 可以取消
- input 可以清空

Form and Settings 可以 reset

## Link 应该以 short link 形式显示

[![Image from Gyazo](https://i.gyazo.com/cfa77218b4286d237d4fb21793dc39ee.jpg)](https://gyazo.com/cfa77218b4286d237d4fb21793dc39ee)

## Pagination

[![Image from Gyazo](https://i.gyazo.com/1c7f9136f005af3f3b83a0c536bf454c.jpg)](https://gyazo.com/1c7f9136f005af3f3b83a0c536bf454c)

## Delete 设计参考

Vercel Delete Project UI 很漂亮

[![Image from Gyazo](https://i.gyazo.com/101389b51e183ab2f30aa18c6a310d9e.jpg)](https://gyazo.com/101389b51e183ab2f30aa18c6a310d9e)

## 如何显示人数

Good

[![Image from Gyazo](https://i.gyazo.com/6d3492a98181ee53098cadafc113f3d7.jpg)](https://gyazo.com/6d3492a98181ee53098cadafc113f3d7)

GitHub

[![Image from Gyazo](https://i.gyazo.com/3f8bef63beaf9b1347a97142784c66ff.jpg)](https://gyazo.com/3f8bef63beaf9b1347a97142784c66ff)

Bad

[![Image from Gyazo](https://i.gyazo.com/ec200aa88c16fe6e9f40540f8d043404.jpg)](https://gyazo.com/ec200aa88c16fe6e9f40540f8d043404)

[![Image from Gyazo](https://i.gyazo.com/ba8808e38e5a668517af1fda73e01549.jpg)](https://gyazo.com/ba8808e38e5a668517af1fda73e01549)

## Preview Button

[![Image from Gyazo](https://i.gyazo.com/5702f19cb4581d671349c8175d685e2f.jpg)](https://gyazo.com/5702f19cb4581d671349c8175d685e2f)

## 浮标
很喜欢 flomoplus 的浮标

[![Image from Gyazo](https://i.gyazo.com/02b3b8f5fb77eafe2feea2d7b92d0622.png)](https://gyazo.com/02b3b8f5fb77eafe2feea2d7b92d0622)

[![Image from Gyazo](https://i.gyazo.com/cf3d1f2df23e6b07fdef77333df11675.png)](https://gyazo.com/cf3d1f2df23e6b07fdef77333df11675)

## 清爽的 Search reset UI in ListPage

[![清爽的 Search reset UI in ListPage](https://i.gyazo.com/17ddb00514c9bfd32d56a8e4085bcc1e.jpg)](https://gyazo.com/17ddb00514c9bfd32d56a8e4085bcc1e)

## UI: color input

![CleanShot Brave Browser-Labels · ThaddeusJiangmojito-admin-000043](https://user-images.githubusercontent.com/17308201/158314935-e367b879-be07-441b-8c74-8188fa74a1fa.gif)

## UI: Avatar.Group

![CleanShot 2022-02-16 at 14 45 00](https://user-images.githubusercontent.com/17308201/154203965-2f8a24eb-5154-44fc-b01d-332c790dae43.jpg)

## 当 UI 上内容过多时，应该默认隐藏高级操作

backlog

![CleanShot 2022-02-08 at 18 01 40](https://user-images.githubusercontent.com/17308201/152953296-50249119-a05c-4a34-a36e-9c5bd2a462ee.gif)

![CleanShot 2022-02-08 at 18 02 44](https://user-images.githubusercontent.com/17308201/152953419-6f6587f8-b55b-4672-8ec7-bf65bcd16477.gif)

azure portal
![CleanShot 2022-02-08 at 18 03 21](https://user-images.githubusercontent.com/17308201/152953601-854ea7a7-48c9-4259-bf5e-e914d4af9daa.gif)

## Menu for mobile and pc

Paypay UI is best.

https://user-images.githubusercontent.com/17308201/157423995-064c66ca-10b8-4e78-8768-a4e136d6e045.MP4

# UI：使用虚线框表示不存在的元素，例如 list 的创建按钮 #61

![image](https://user-images.githubusercontent.com/17308201/170256594-4bb639e4-ab8b-42f0-afcd-5958193ebbb3.png)

# UI: placeholder 不能替代 label

Bad

![CleanShot 2022-05-26 at 14 25 22](https://user-images.githubusercontent.com/17308201/170422149-74438d96-b639-4b86-9cfe-c8ec7709d4bd.png)

Good

![CleanShot 2022-05-26 at 14 26 23](https://user-images.githubusercontent.com/17308201/170422190-bda8ec9e-3050-4f24-86c6-ea333164de14.png)
