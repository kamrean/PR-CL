# 客户交付 Playbook

## 目标

这份文档定义从接单到交付的标准流程。

## 总流程

1. 判断资料是否适合公开提交
2. 收集客户信息
3. 判断是否接单
4. 执行仓库体检、CI 诊断或 PR 初审
5. 人工复核 AI 输出
6. 整理交付包
7. 跟进升级到落地包或托管

## Step 1：先判断入口

优先使用：

- `service_kit/private_intake_policy.md`
- `service_kit/customer_intake.md`

规则：

- 公开 issue 只收公开信息
- 私有仓库、私有日志、截图、真实 PR 链接一律转私下渠道
- 不把真实客户资料贴在公开仓库里

`.github/ISSUE_TEMPLATE/*` 只作为公开项目和 demo 项目的轻量入口，不作为私有资料标准收单入口。

## Step 2：收集客户信息

使用：

- `service_kit/customer_intake.md`
- `service_kit/private_repo_access_authorization.md`

必须确认：

- 仓库是否公开
- 当前问题属于哪类服务
- 是否涉及敏感日志
- 是否允许查看代码
- 是否允许查看 PR
- 是否允许创建 PR
- 是否允许改 workflow
- 权限是否有截止时间

## Step 3：接单判断

可以接：

- 公开仓库
- 已脱敏日志
- GitHub Actions 的低风险红灯
- Node/Python 的基础工程化问题

谨慎接：

- 私有仓库
- 需要临时写权限
- 涉及 workflow 扩权
- 涉及环境变量和 secrets

不建议接：

- 未脱敏日志
- 代登录
- 共享账号
- 生产事故处置
- 支付、登录、权限系统的高风险代改

## Step 4：执行服务

### 仓库体检

使用：

- `service_kit/repo_audit_checklist.md`
- `service_kit/repo_audit_report_template.md`
- `service_kit/risk_level_standard.md`

### CI 红灯诊断

使用：

- `service_kit/ci_red_checklist.md`
- `service_kit/ci_red_report_template.md`
- `service_kit/ci_log_extraction_rules.md`
- `service_kit/ci_red_risk_matrix.md`
- `automation/ci_red_triage/new-ci-red-report.ps1`

### PR 初审

使用：

- `service_kit/pr_review_checklist.md`
- `service_kit/pr_review_report_template.md`
- `service_kit/pr_review_risk_matrix.md`
- `automation/pr_review/new-pr-review-report.ps1`

### GitHub Actions 落地

使用：

- `workflow_templates/node-minimal-ci.yml`
- `workflow_templates/python-minimal-ci.yml`
- `workflow_templates/artifact-on-failure-snippet.yml`
- `service_kit/customer_workflow_install_guide.md`
- `service_kit/github_actions_security_baseline.md`

## Step 5：AI 辅助分析

使用：

- `service_kit/ai_analysis_prompt.md`
- `service_kit/ai_analysis_sop.md`
- `service_kit/ai_data_handling_and_customer_consent.md`
- `service_kit/ai_output_review_checklist.md`

规则：

- 先脱敏，再外发
- 不确定是否脱敏完成时，停止
- AI 输出必须人工复核后再交付

## Step 6：交付前安全检查

必须使用：

- `service_kit/preflight_security_checklist.md`
- `service_kit/artifact_allowlist_and_redaction_policy.md`

## Step 7：整理交付包

使用：

- `service_kit/delivery_pack_spec.md`
- `service_kit/delivery_pack_template.md`
- `service_kit/fix_and_verify_playbook.md`
- `service_kit/risk_confirmation_template.md`
- `service_kit/delivery_handoff_template.md`

## Step 8：试点复盘与升级

使用：

- `service_kit/pilot_execution_pack.md`
- `service_kit/pilot_to_paid_conversion_sop.md`
- `service_kit/ops_metrics_dashboard.md`

## 最重要的原则

1. 不拿公开仓库收私有资料
2. 不在权限不清楚时直接动手
3. 不把未脱敏内容发给 AI
4. 不把大而全的 artifacts 当成默认交付
