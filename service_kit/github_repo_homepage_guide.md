# GitHub 仓库首页优化建议

## 目标

让 GitHub 仓库首页一打开就能回答 3 个问题：

1. 这是做什么的
2. 适合谁
3. 我下一步怎么开始

## README 首页结构建议

推荐顺序：

1. 一句话定位
2. 解决什么问题
3. 适合谁
4. 三个核心服务包
5. 标准交付物
6. 合作边界
7. 下一步怎么联系/怎么开始

## 当前仓库建议补充

建议在 README 首页更明显写出：

1. 这是一个“服务工具包”，不是通用 AI 平台
2. 第一阶段只做仓库体检、CI 红灯诊断、PR/CI 自动化落地
3. 所有模板已在 `service_kit/`
4. 想快速了解，就先看：
   - `service_kit/one_page_service.md`
   - `service_kit/service_packages.md`
   - `service_kit/client_faq.md`

## 建议增加的首页导航

可以在 README 增加一个“先看这里”区块：

```text
先看这里：
1. 服务介绍
2. 套餐与定价
3. 客户 FAQ
4. 完整 demo 闭环
```

## GitHub 页面上的第一批可见内容

建议优先让客户看到：

1. README
2. service_kit/
3. workflow_templates/
4. .github/ISSUE_TEMPLATE/

## 不要在首页堆太多的东西

避免：

- 一开始就讲太多模型背景
- 一开始就讲太多长篇创业分析
- 混杂太多不直接成交的信息

首页应该优先服务成交，而不是优先服务研究。

## 最适合下一步做的优化

1. README 增加“先看这里”
2. README 增加“套餐与定价”入口
3. README 增加“完整 demo”入口
4. README 增加“合作边界”小节
