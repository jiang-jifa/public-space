# Backend Coding Style Guide

## File Structure

* Grouping by features or routes
* Avoid too much nesting
* Don’t overthink it

https://reactjs.org/docs/faq-structure.html#/

## count -> amount

* Don't use count, use amount. Because count is difficult to search, is match ac`count`.
* The `total` is not good. total is total, amount is amount.

## Search Page use URL

Change URL will trigger search, change search params will change URL.

## URL params encode and decode

例如检索名字为 `ThaddeusJiang+` 的人，不应该匹配 `ThaddeusJiang`。

注意处理 `+ - _ ?`


## Log

应该在功能开始时和结束时都记录 log，以防止代码出现异常没有正确记录 log。