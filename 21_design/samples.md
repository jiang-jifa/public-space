# UIUX设计参考

## 编辑 vs. 不可编辑

![Form 编辑 vs. 不可编辑](https://user-images.githubusercontent.com/17308201/151921586-d24dd307-8bc1-4bec-8049-86f3d3054beb.jpg)
> smartHR


# No Data

## Table

Edit Mode
[![Image from Gyazo](https://i.gyazo.com/502c3313340f11aa1b60c62e3bb23e58.jpg)](https://gyazo.com/502c3313340f11aa1b60c62e3bb23e58)
> github project

View Mode
[![Image from Gyazo](https://i.gyazo.com/0700e8130a2ffd960de0fa762748ef0e.jpg)](https://gyazo.com/0700e8130a2ffd960de0fa762748ef0e)
> github pull request

## List

same as Table

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

