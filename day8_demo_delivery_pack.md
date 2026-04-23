# Demo 交付包示例

## 00-summary.md

### 项目概况

客户名称：Demo 客户

仓库名称：frontend-ci-red-demo

服务类型：CI 红灯诊断

交付日期：2026-04-24

### 一句话结论

本次 CI 红灯大概率由前端组件 import 路径错误或文件名大小写不一致导致。

### 最重要的 3 个问题

1. `npm run build` 失败，CI 无法通过。

2. 组件路径与真实文件路径可能不一致。

3. 当前 PR 缺少明确验证说明。

### 建议优先做的 3 个动作

1. 检查 `src/App.jsx` 中 Button 组件 import 路径。

2. 在 Linux 环境复跑 `npm run build`。

3. 在 PR 中补充验证命令和结果。

### 风险等级

中

### 是否需要客户确认

是

## 01-detailed-report.md

详细报告请参考：

- `day4_demo_frontend_ci_red_report.md`
- `day7_demo_pr_review_report.md`

## 02-next-steps.md

### 今天建议先做

1. 修正 import 路径并复跑 `npm run build`。

2. 检查文件名大小写是否和 import 一致。

3. 在 PR 描述中补充验证方式。

### 本周建议完成

1. 把前端项目基础 CI 跑通。

2. 补充最小前端冒烟测试。

3. 建立 PR 初审模板。

### 后续可升级服务

1. GitHub Actions 落地包

2. 月度 CI 红灯托管

3. PR 初审托管

## 03-risk-and-confirmation.md

### 高风险事项

当前未发现 secrets、权限、支付、登录等高风险改动。

### 需要客户确认

- [x] 是否允许修改 import 路径
- [x] 是否允许创建修复 PR
- [ ] 是否允许补前端测试

### 备注

这是一个典型的中风险前端构建失败案例，适合做销售 demo。
