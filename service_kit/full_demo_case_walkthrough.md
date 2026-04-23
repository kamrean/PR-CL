# 完整 Demo 案例闭环

## 目标

这份案例用来演示从“发现问题”到“形成交付包”的完整闭环，适合作为下一阶段的标准 demo。

案例场景：

- 一个前端仓库
- CI 红灯
- 相关 PR 需要初审
- 最后给客户一份完整交付包

## Step 1：接收客户输入

客户提供：

1. 仓库链接
2. PR 链接
3. GitHub Actions 失败链接
4. 脱敏后的关键日志
5. 项目技术栈

使用模板：

- `customer_intake.md`
- `ci-red-diagnosis` issue 模板
- `pr-review` issue 模板

## Step 2：先做仓库体检

检查固定项：

1. README
2. 依赖安装
3. 测试命令
4. CI 配置
5. secrets 风险
6. PR 模板
7. 分支保护

本案例假设发现：

- README 缺少测试命令说明
- 仓库已有 GitHub Actions，但失败时日志不好读
- 没有 PR 模板

输出：

- `repo_audit_report_template.md`

## Step 3：做 CI 红灯诊断

失败步骤：

- `npm run build`

关键日志：

```text
Module not found: Can't resolve './components/Button'
```

根因判断：

- import 路径错误
- 文件大小写不一致
- 文件未提交

输出：

- `ci_red_report_template.md`

## Step 4：做 PR 初审

审查重点：

1. 本次修复是否真的指向根因
2. 是否补充验证方式
3. 是否缺少测试
4. 是否有兼容性风险

本案例结论：

- 风险等级：中
- 建议：暂缓合并，先复跑 build 并确认路径大小写

输出：

- `pr_review_report_template.md`

## Step 5：整理标准交付包

交付包结构：

```text
delivery-pack/
  00-summary.md
  01-detailed-report.md
  02-next-steps.md
  03-risk-and-confirmation.md
```

摘要写什么：

1. 当前 CI 红灯的最可能原因
2. 当前 PR 为什么还不建议直接合并
3. 今天最优先的 3 个动作

## Step 6：给客户下一步建议

今天先做：

1. 修正 import 路径
2. 在 Linux 环境复跑 build
3. 在 PR 里补充验证说明

本周建议：

1. 补 PR 模板
2. 补测试命令说明
3. 优化 GitHub Actions 失败日志

后续可升级服务：

1. GitHub Actions 落地包
2. 月度 CI 红灯托管
3. PR 初审托管

## 这个案例证明了什么

1. 我们不是只会“看日志”，而是能把日志变成客户能执行的结论。

2. 我们不是只会“提建议”，而是能把建议整理成可交付包。

3. 我们可以把仓库体检、CI 红灯诊断、PR 初审连成一条标准服务链。

## 适合拿去销售的说法

这个 demo 展示的是一个最常见的真实场景：前端项目构建失败，开发者知道哪里红了，但不知道为什么、怎么修、要不要合并 PR。我们的服务把这三个问题一次性说清楚，并给出可执行下一步。
