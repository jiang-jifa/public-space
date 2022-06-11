# reverse interview

https://github.com/yifeikong/reverse-interview-zh/blob/master/README.md


# 技术

- 公司常用的技术栈是什么？
  - backend: Java + Javalin + CosmosDB + ...
  - frontend: TS + React + TailwindCSS + Node.js + Serverless Functions +
  - devops: Terraform + Datadog + Azure + ...
- 你们怎么使用源码控制系统？
  - 普通的 git 流程
    - branch: master <- staging <- dev <- ...
- 你们怎么测试代码？
  - backend: Unit Test
  - frontend: Visual Test + E2E Test + Unit Test
  - 性能测试: k6
- 你们怎么追踪 bug?
  - backlog + 燃尽图
- 你们怎样监控项目？
  - Azure Monitoring 监控 App service
  - Datadog 监控 Audit log
  - Service-Admin 监控 daily jobs
- 你们怎么集成和部署代码改动？是使用持续集成和持续部署吗 (CI/CD)？
  - GitLab CI/CD
  - GitHub Actions
- 你们的基础设施搭建在版本管理系统里吗？或者是代码化的吗？
  - 必须的
    - Terraform + Node.js
- 从计划到完成一项任务的工作流是什么样的？
  - 检查 RoadMap -> 产品经理整理思路（WIP） -> 设计和开发代表讨论 -> 开发
- 你们如何准备故障恢复？
  - 第一步：revert
  - 第二步：调查
  - 第三步：修复 + 完整 Unit Test
- 有标准的开发环境吗？是强制的吗？
  - editor 强制配置
    - frontend: VSCode
    - backend: IntelliJ
  - 其他的随意
- 你们需要花费多长时间来给产品搭建一个本地测试环境？（分钟 / 小时 / 天）
  - backend: 1h 以内
  - frontend: 0.5h 以内
- 你们需要花费多长时间来响应代码或者依赖中的安全问题？
  - backend: 不确定
  - frontend: 预计 1d 以内
- 所有的开发者都可以使用他们电脑的本地管理员权限吗？
  - 可以
- 介绍一下你们的技术原则或者展望。
  - 技术原则：实用，简单，主流
  - 展望：TODO: 让我想想
- 你们的代码有开发文档吗？有没有单独的供消费者阅读的文档？
  - 有
  - dev document: Markdown + Git
  - customer support document: Notion
- 你们有更高层次的文档吗？比如说 ER 图，数据库范式
  - 没有
  - 没有 ER 图，没有流程图。这玩应没用，代码即文档，代码即设计。
- 你们使用静态代码分析吗？
  - 必须的
- 你们如何管理内部和外部的数字资产？
  - 内部：
    - Figma + Notion
  - 外部：TODO:
- 你们如何管理依赖？
  - backend: Maven
  - frontend: NPM
- 公司是否有技术分享交流活动？有的话，多久一次呢？(zh)
  - 必须的
    - 分享会：1 次/月
    - LightningTalk：2 次/月
    - Fullstack 培养：随时
    - 好文分享：随时
- 你们的数据库是怎么进行版本控制的？(zh)
  - 定义：code
  - 数据：Cosmos 自动备份
- 业务需求有没有文档记录？是如何记录的？(zh)
  - 有
    - markdown
    - UserStory



## 我认可的 Designer 具备哪些特征？

1. 设计的统一性。同一个项目，昨天、今天、明天要保持统一性。
2. 设计储备丰富。有大量 UI/UX 经验，针对不同业务需求，能做出多个设计方案，且有理有据。
3. 坚守 Less but better。