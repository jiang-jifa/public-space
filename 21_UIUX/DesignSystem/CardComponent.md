# DesignSystem 中 Card Component 是如何设计的？

- [DesignSystem 中 Card Component 是如何设计的？](#designsystem-中-card-component-是如何设计的)
  - [AntDesign 不好看，但是要素可以参考](#antdesign-不好看但是要素可以参考)
  - [daisyUI 好看，可以参考](#daisyui-好看可以参考)
- [结论](#结论)

## AntDesign 不好看，但是要素可以参考

![CleanShot 2022-03-22 at 11 46 02](https://user-images.githubusercontent.com/17308201/159397684-ed02546e-d551-450a-8d4f-05c54646a3bd.png)


> 最基础的卡片容器，可承载文字、列表、图片、段落，常用于后台概览页面。

- 封面
- 头像、标题和描述信息
- 动作

https://ant.design/components/card-cn/#components-card-demo-meta

## daisyUI 好看，可以参考

![CleanShot 2022-03-22 at 11 46 48](https://user-images.githubusercontent.com/17308201/159397767-bb42a29a-5f60-4578-ad6d-8c547f7638ee.png)
![CleanShot 2022-03-22 at 11 47 34](https://user-images.githubusercontent.com/17308201/159397841-c70885a5-b153-48a4-a42d-8b82b7bd9b6d.png)
![CleanShot 2022-03-22 at 11 47 54](https://user-images.githubusercontent.com/17308201/159397878-9b693d83-b232-41b5-9fa2-931f857dc164.png)



> Cards are used to group and display content in a way that is easily readable.

- card-title
- card-body
- card-action


daisyUI 如何映射到 HR tech SaaS 产品？

- 没有那么多图片，但是成员头像和成员数量通常很重要。


# 结论

- Card 分成上中下三个部分，分别命名： card-header, card-body, card-footer
  - card-header: title, badge
    - title 是 link，可点击。点击 Card 空白部分不进行跳转。
    - title 点击后动作待确定。
  - card-body: content
    - content 内容待确定
  - card-footer: actions
    - 右对齐，最多两个 button
    - 居中对齐，或者挤满 card 太丑了。
- Card 整体
 - 初始没有阴影，hover 有阴影，focus 显示 outline


![image](https://user-images.githubusercontent.com/17308201/159397987-ef5a8f6a-6be1-4558-afce-ff68f3466a5d.png)
https://excalidraw.com/#json=2Qc_eSAg4yGmAMhtUz7od,05WW8K124EluBuUr6aH-aw

