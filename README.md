# PR/CI Red Light Clinic

面向学生项目、独立开发者、小外包团队和小 SaaS 团队的轻量工程化服务工具包。

这套仓库解决的是：

- 仓库接手困难
- CI 经常红灯但没人愿意看长日志
- PR 改动不大但 reviewer 很难快速判断风险
- GitHub Actions 没配好，问题总是很晚才暴露

我们卖的不是账号，也不是“全自动修一切”的承诺。
我们卖的是可交付结果：

1. 仓库体检
2. CI 红灯诊断
3. PR 初审
4. GitHub Actions 基础落地
5. 后续试点、转付费与月度托管流程

## 当前默认支持范围

这套 MVP 当前主支持：

- GitHub
- GitHub Actions
- Node 项目
- Python 项目

以下内容默认按单评估，不作为标准承诺：

- GitLab CI
- Jenkins
- CircleCI
- Vercel / Netlify / Cloudflare Pages 的平台级问题
- 多语言 monorepo
- 生产部署

详细范围见：

- [服务范围矩阵](service_kit/service_scope_matrix.md)

## 先看这里

第一次打开这个仓库，建议先看这 8 份材料：

1. [服务介绍](service_kit/one_page_service.md)
2. [服务边界](service_kit/service_boundary.md)
3. [服务套餐与定价](service_kit/service_packages.md)
4. [客户 FAQ](service_kit/client_faq.md)
5. [完整 demo 闭环](service_kit/full_demo_case_walkthrough.md)
6. [15 天成果总览](service_kit/fifteen_day_summary.md)
7. [上线前总检查](service_kit/release_readiness_checklist.md)
8. [首单执行清单](service_kit/first_order_execution_checklist.md)

## 如何开始合作

最简单的开始方式只有两种：

1. 发一个仓库链接，先做仓库体检
2. 发一段脱敏后的 GitHub Actions 错误摘要，先做单次诊断

第一次合作默认建议先从低风险入口包开始，不直接做大而全的自动化或托管。

## 私有资料与敏感信息

公开仓库不是客户私有资料的默认入口。

如果涉及以下内容，请先转私下渠道：

- 私有仓库
- 私有 PR
- 原始 CI 日志
- 截图
- workflow 文件
- 任何未确认完成脱敏的材料

对应材料：

- [私有资料接单政策](service_kit/private_intake_policy.md)
- [客户信息收集表](service_kit/customer_intake.md)
- [私有仓库访问授权模板](service_kit/private_repo_access_authorization.md)

## 服务包

### 1. 仓库体检

固定检查项：

- README
- 依赖安装
- 测试命令
- CI 配置
- secrets 风险
- PR 模板
- 分支保护

对应材料：

- [仓库体检检查清单](service_kit/repo_audit_checklist.md)
- [仓库体检报告模板](service_kit/repo_audit_report_template.md)
- [风险分级标准](service_kit/risk_level_standard.md)

### 2. CI 红灯诊断

固定输出：

- 失败步骤
- 关键日志
- 根因判断
- 修复建议
- 验证命令
- 风险等级

对应材料：

- [CI 红灯诊断检查清单](service_kit/ci_red_checklist.md)
- [CI 红灯诊断报告模板](service_kit/ci_red_report_template.md)
- [CI 日志提取规则](service_kit/ci_log_extraction_rules.md)
- [CI 红灯风险矩阵](service_kit/ci_red_risk_matrix.md)

### 3. PR 初审

固定输出：

- 本次改动摘要
- 潜在 bug
- 缺失测试
- 兼容性风险
- 安全或权限风险
- reviewer 重点关注项
- 是否建议合并

对应材料：

- [PR 初审检查清单](service_kit/pr_review_checklist.md)
- [PR 初审报告模板](service_kit/pr_review_report_template.md)
- [PR 初审风险矩阵](service_kit/pr_review_risk_matrix.md)

### 4. GitHub Actions 基础落地

当前包含：

- Node 最小 CI workflow
- Python 最小 CI workflow
- 失败时 artifact 上传片段
- GitHub Actions 落地说明
- workflow 调试清单

对应材料：

- [workflow_templates](workflow_templates)
- [客户 GitHub Actions 落地说明](service_kit/customer_workflow_install_guide.md)
- [GitHub Actions 安全基线](service_kit/github_actions_security_baseline.md)
- [Artifact 白名单与脱敏政策](service_kit/artifact_allowlist_and_redaction_policy.md)

## 最小执行层

这套仓库不再只是文档，也补了两份最小可执行脚本，用来生成标准化报告骨架：

- [automation/README.md](automation/README.md)
- [CI 红灯报告骨架脚本](automation/ci_red_triage/new-ci-red-report.ps1)
- [PR 初审报告骨架脚本](automation/pr_review/new-pr-review-report.ps1)

## AI 使用边界

AI 只做辅助分析，不直接替代人工交付。

必须人工复核：

- CI 根因判断
- 修复建议
- PR review 建议
- secrets、token、用户信息
- 登录、支付、权限、数据库、生产部署等高风险内容

对应材料：

- [AI 分析提示词](service_kit/ai_analysis_prompt.md)
- [AI 分析 SOP](service_kit/ai_analysis_sop.md)
- [AI 数据处理与客户同意](service_kit/ai_data_handling_and_customer_consent.md)
- [AI 输出复核清单](service_kit/ai_output_review_checklist.md)

## 交付怎么做

交付不是“几句建议”，而是一套标准包：

- [客户交付 Playbook](docs/customer_delivery_playbook.md)
- [交付包规范](service_kit/delivery_pack_spec.md)
- [修复与验证闭环手册](service_kit/fix_and_verify_playbook.md)
- [交付前安全硬检查](service_kit/preflight_security_checklist.md)
- [交付移交模板](service_kit/delivery_handoff_template.md)

## 获客、试点与案例

- [服务主页文案](service_kit/service_landing_page.md)
- [服务套餐与定价](service_kit/service_packages.md)
- [首批客户私信模板](service_kit/outreach_message_templates.md)
- [试点执行包](service_kit/pilot_execution_pack.md)
- [试点转付费 SOP](service_kit/pilot_to_paid_conversion_sop.md)
- [试点运营指标看板](service_kit/ops_metrics_dashboard.md)
- [案例展示页](service_kit/case_showcase_page.md)

## 仓库结构

```text
.
├── .github/
├── automation/
├── docs/
├── repo_scaffold/
├── service_kit/
├── workflow_templates/
└── README.md
```
