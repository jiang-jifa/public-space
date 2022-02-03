# E2E Testing

## 现在项目中 E2E 有哪些错误？

1. 使用 E2E 模拟 Login
   1. 应该 mock login
2. smoke testing 也连接真正的 server
   1. 应该 mock server
3. 使用 CSS selector
   1. 应该使用 Text selector


TODO: 修复，并编写文章。

> E2E Testing is not easy, if you think you understand the E2E testing after read once docs, you are wrong.

## Fault 1: Not split smoke testing and e2e testing

* smoke testing
  * splitting frontend and backend
    * frontend smoke testing connects mock backend.
    * backend smoke testing written by code. 使用代码集成多个 API 完成某个基本功能

* e2e testing
  * connect real backend
  * test the real user actions and stories.
