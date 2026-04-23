# 交付包模板

## 00-summary.md

### 项目概况

客户名称：

仓库名称：

服务类型：

交付日期：

### 一句话结论

本次最主要的问题是：

### 最重要的 3 个问题

1.

2.

3.

### 建议优先做的 3 个动作

1.

2.

3.

### 风险等级

- 低
- 中
- 高

### 是否需要客户确认

- 是
- 否

## 01-detailed-report.md

### 详细结论

请粘贴对应服务的正式报告：

- 仓库体检：使用 `repo_audit_report_template.md`
- CI 红灯诊断：使用 `ci_red_report_template.md`
- PR 初审：使用 `pr_review_report_template.md`

## 02-next-steps.md

### 今天建议先做

1.

2.

3.

### 本周建议完成

1.

2.

3.

### 后续可升级服务

1.

2.

3.

## 03-risk-and-confirmation.md

### 高风险事项

1.

2.

3.

### 需要客户确认

- [ ] 是否允许修改依赖版本
- [ ] 是否允许修改 workflow
- [ ] 是否允许创建修复 PR
- [ ] 是否允许补测试
- [ ] 是否涉及环境变量或 secrets
- [ ] 是否涉及生产配置

### 备注

## artifacts/

建议放入：

- 关键日志
- workflow 文件
- diff
- 验证命令

## screenshots/

建议放入：

- CI 失败截图
- PR 页面截图
- GitHub Actions 页面截图
