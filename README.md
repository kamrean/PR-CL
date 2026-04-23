# PR/CI Red Light Clinic

面向学生项目、独立开发者、小外包团队和小 SaaS 团队的轻量工程化服务工具包。

这不是一个卖账号的项目，也不是一个一上来就承诺“全自动修一切”的平台。
这套仓库卖的是可交付结果：

1. 仓库体检
2. CI 红灯诊断
3. PR 初审
4. GitHub Actions 基础落地
5. 后续试点、转付费与月度托管流程

如果你现在最头疼的是这些问题：

- 仓库接手困难，新人不知道怎么跑起来
- CI 经常红灯，但没人愿意看长日志
- PR 改动不大，但 reviewer 很难快速判断风险
- GitHub Actions 没配好，问题总是很晚才暴露
- 想做工程化，但不知道第一步先补什么

这套仓库就是围绕这些问题搭的。

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

## 适合谁

最适合以下几类客户：

1. 学生项目组
2. 独立开发者
3. 小型外包团队
4. 小 SaaS 团队
5. 旧仓库维护者

## 如何开始合作

最简单的开始方式只有两种：

1. 发一个仓库链接，先做仓库体检
2. 发一段脱敏后的 CI 日志，先做单次诊断

第一次合作默认建议先从低风险入口包开始，不直接做大而全的自动化或托管。

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

- [CI 红灯诊断清单](service_kit/ci_red_checklist.md)
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

### 4. PR/CI 自动化落地包

当前包含：

- Node 最小 CI workflow
- Python 最小 CI workflow
- 失败时 artifact 上传片段
- GitHub Actions 落地说明
- workflow 调试清单

对应材料：

- [workflow_templates](workflow_templates)
- [GitHub Actions 最小 CI 说明](service_kit/github_actions_minimal_ci.md)
- [客户落地说明](service_kit/customer_workflow_install_guide.md)
- [workflow 调试清单](service_kit/workflow_debug_checklist.md)

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
- [AI 输出复核清单](service_kit/ai_output_review_checklist.md)
- [客户交付格式](service_kit/client_delivery_format.md)

## 交付怎么做

这套仓库不是只给几句建议，而是把交付动作拆成了标准包：

- [交付包规范](service_kit/delivery_pack_spec.md)
- [交付包模板](service_kit/delivery_pack_template.md)
- [下一步建议模板](service_kit/next_steps_template.md)
- [风险确认模板](service_kit/risk_confirmation_template.md)
- [交付移交模板](service_kit/delivery_handoff_template.md)

## 销售与对外页面

- [服务主页文案](service_kit/service_landing_page.md)
- [服务套餐与定价](service_kit/service_packages.md)
- [客户 FAQ](service_kit/client_faq.md)
- [GitHub 仓库首页优化建议](service_kit/github_repo_homepage_guide.md)
- [GitHub 仓库首页最终文案](service_kit/github_homepage_final_copy.md)

## 获客与试点

- [首批客户私信模板](service_kit/outreach_message_templates.md)
- [试点邀约文案](service_kit/pilot_offer_templates.md)
- [客户筛选评分](service_kit/lead_scoring.md)
- [首次沟通话术](service_kit/discovery_call_script.md)
- [前 50 个潜在客户计划](service_kit/first_50_leads_plan.md)
- [客户触达记录表](service_kit/lead_tracker_template.md)
- [试点反馈表](service_kit/pilot_feedback_form.md)
- [案例授权模板](service_kit/case_permission_template.md)
- [线索跟进 SOP](service_kit/followup_sop.md)
- [客户状态定义](service_kit/client_status_definitions.md)

## 试点执行与转付费

- [试点执行包](service_kit/pilot_execution_pack.md)
- [交付前检查表](service_kit/pre_delivery_checklist.md)
- [试点验收标准](service_kit/pilot_acceptance_criteria.md)
- [试点转付费 SOP](service_kit/pilot_to_paid_conversion_sop.md)
- [首单执行清单](service_kit/first_order_execution_checklist.md)
- [实际报价话术](service_kit/pricing_conversation_script.md)

## 案例展示

- [案例展示页](service_kit/case_showcase_page.md)
- [销售用案例摘要模板](service_kit/case_summary_template.md)
- [Before / After 模板](service_kit/before_after_template.md)
- [结果展示 SOP](service_kit/result_showcase_sop.md)
- [案例展示素材检查表](service_kit/showcase_assets_checklist.md)

## 收口与上线

- [上线前总检查](service_kit/release_readiness_checklist.md)
- [仓库最终导航图](service_kit/final_repository_map.md)
- [15 天成果总览](service_kit/fifteen_day_summary.md)
- [推送前检查清单](service_kit/pre_push_checklist.md)

## Demo 与样板

- [样板仓库计划](service_kit/demo_repo_plan.md)
- [样板仓库评分表](service_kit/demo_repo_scorecard.md)
- [案例追踪表](service_kit/demo_case_tracker.md)
- [旧仓库体检 demo](service_kit/demo_legacy_repo_audit.md)
- [前端 CI 红灯 demo](service_kit/demo_frontend_ci_red_report.md)
- [PR 初审 demo](service_kit/demo_pr_review_report.md)
- [交付包 demo](service_kit/demo_delivery_pack.md)
- [完整 demo 闭环](service_kit/full_demo_case_walkthrough.md)

## 仓库结构

```text
.
├── .github/
├── docs/
├── repo_scaffold/
├── service_kit/
├── workflow_templates/
└── README.md
```

## 本地 Git 与 GitHub

如果 PowerShell 找不到 `git`，可以先确认：

```powershell
& "C:\Program Files\Git\cmd\git.exe" --version
```

初始化本地仓库：

```powershell
cd D:\赛道研究\pr-ci-mvp
& "C:\Program Files\Git\cmd\git.exe" init
& "C:\Program Files\Git\cmd\git.exe" add .
& "C:\Program Files\Git\cmd\git.exe" commit -m "Initial PR CI MVP service kit"
```

推送到 GitHub：

```powershell
& "C:\Program Files\Git\cmd\git.exe" branch -M main
& "C:\Program Files\Git\cmd\git.exe" remote add origin https://github.com/YOUR_NAME/YOUR_REPO.git
& "C:\Program Files\Git\cmd\git.exe" push -u origin main
```

建议把 `C:\Program Files\Git\cmd` 加入 Windows PATH，这样后续可以直接使用 `git`。
