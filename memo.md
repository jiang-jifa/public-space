# Outline

## Section1 重构工作 预计20min

1.状态管理
2.API层处理网络请求 `mock`

- 提取了一下 API

3.性能优化

- 一个页面
- `SSR`

- 重复发请求：1. WebSocket 2. React-Query
- 如何删减 fields
  - GraphQL
  - Remix

4.代码质量 自定义hook复用组件逻辑

- 我是 install useHook library。
- https://danger.systems/js/


5.一个业务后端的规划backend for frontend

## Section2 下一步产品设计 预计30min

0.产品是一个主要针对web3内容的feed聚合器，类似可以参照今日头条，twitter内容精选

1.（本节内容全是个人proposal尚未和团队充分讨论）我进行了一个尝试：用价值观来决定核心理念（value oriented product）
->理念A 用户所有信息都是隐私，用户自己控制
->理念B 最大化程度让用户自定义内容和APP的样式

我设计的价值观是"诚实"和"宽容"

->"诚实"是告知用户APP试图记录everything，但不主动触碰这些数据，不保证也不试图获取信任；
->"宽容"是提供用户所有选择，内容、算法、样式都交给用户（虽然开源让技术性用户可以做到但应该让更多用户可以做到）

为什么要从价值观出发来设计？我考虑过各种价值观的feed，比如以下：
->"求知欲" 今日头条、twitter精选、知乎精选，实现了奶头乐和上瘾机制 本质是 time killer
->"功利" 雪球、华尔街日报、Bloomberg等金融feed聚合，有一定经济价值

上述产品都抓住了某些人性来满足不同用户不同场景下的需求，相应会有自己的scope。大胆一点，我想提供用户自己定义scope的能力（有点low code的倾向?）

https://rubyonrails.org/doctrine#/

2.整理了需求表格

每一个FEATURE是一个需求，比较粗颗粒度，比如书签bookmark功能，内容筛选器功能filter，具体功能点还需要完善。

四色建模：
http://apframework.com/2020/03/22/ddd-color/

对于每一个FEATURE的进度，我借用软件版本的概念来表示，不知道这样是否合适？
->PRE ALPHA BETA RC STABLE

该怎么把握每一个 FEATRUE 的可行性和进度呢？这是我想讨论的一个问题。
目前有一份纲要性的概念化的 roadmap 文档（团队通过comments交流）和本节提到的需求表格。

目前团队开发流程：
->1 确定一个粗粒度的feature包括诸多细粒度的功能点
->2 客户端写demo
->3 验证可行性后进入迭代
->4 设计出稿 & 客户端mock更真实的数据 & 客户端实现
->5 客户端总结API
->6 API交与后端实现
->7 重复步骤4
基于cypress的测试应该参与哪些步骤呢？