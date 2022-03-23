# DesignSystem 中如何规定 AvatarComponent？

- [DesignSystem 中如何规定 AvatarComponent？](#designsystem-中如何规定-avatarcomponent)
  - [需求](#需求)
  - [参考 GitHub UX](#参考-github-ux)
  - [参考 Wikipedia UX](#参考-wikipedia-ux)
  - [Design in HRTech SaaS](#design-in-hrtech-saas)

种类：

1. 只有 Avatar
2. Avatar + title

形如：

只有 Avatar:
![CleanShot 2022-03-23 at 14 30 53](https://user-images.githubusercontent.com/17308201/159630543-6d037080-88a8-41fc-b472-a6324744b1a4.png)

Avatar + title
![CleanShot 2022-03-23 at 14 33 46](https://user-images.githubusercontent.com/17308201/159630760-3872504e-b595-4f1f-838a-c4335e6613b3.png)

## 需求

* 展示 Avatar
* hover&focus 时展示一个 popover，内容任意。
* click 后调转到任意页面


## 参考 GitHub UX
并不是所有的 avatar 都提供 popover 的。

![CleanShot 2022-03-23 at 14 36 31](https://user-images.githubusercontent.com/17308201/159631048-99c2d9ff-d9db-40a2-8e7e-0f45054e8482.gif)

## 参考 Wikipedia UX
hover 和 focus 都需要触发 popover

![CleanShot 2022-03-23 at 14 15 27](https://user-images.githubusercontent.com/17308201/159631176-c191a185-6864-4644-b97b-a2877a30062b.gif)

## Design in HRTech SaaS

1. MemberAvatar in TableComponent
2. MemberAvatar in GridComponent
3. MemberAvatar in MemberSelector


1. MemberAvatar in TableComponent

avatar + title, avatar and title can be hover and focus, avatar and title can be clicked.

2. MemberAvatar in GridComponent
same as in TableComponent

3. MemberAvatar in MemberSelector
only avatar, can be hover and focus, but can not be clicked.

