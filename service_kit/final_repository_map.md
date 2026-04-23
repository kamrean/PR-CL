# 仓库最终导航图

## 根目录

### README.md

作用：

仓库总入口，适合第一次打开仓库的人。

### .gitignore

作用：

避免把密钥、日志、临时文件、依赖目录提交进仓库。

## .github/

### ISSUE_TEMPLATE/

作用：

让客户或自己按固定格式提交：

- 仓库体检需求
- CI 红灯诊断需求
- PR 初审需求

### pull_request_template.md

作用：

约束每次 PR 说明格式。

### workflows/docs-check.yml

作用：

检查仓库关键文件是否存在，避免 README 或模板失效。

## workflow_templates/

作用：

存放可以直接复制到客户仓库的 GitHub Actions 模板：

- Node 最小 CI
- Python 最小 CI
- artifact 上传片段

## docs/

作用：

存放仓库操作和整体蓝图类文档。

重点文件：

- `git_github_setup_and_ops.md`
- `final_service_blueprint.md`
- `customer_delivery_playbook.md`

## service_kit/

作用：

这是整个项目最核心的目录，包含可直接用于交付、销售、试点和展示的全部材料。

### 服务定义

- `service_boundary.md`
- `one_page_service.md`
- `service_landing_page.md`
- `service_packages.md`
- `client_faq.md`

### 仓库体检

- `repo_audit_checklist.md`
- `repo_audit_report_template.md`
- `risk_level_standard.md`

### CI 红灯诊断

- `ci_red_checklist.md`
- `ci_red_report_template.md`
- `ci_log_extraction_rules.md`
- `ci_red_risk_matrix.md`

### PR 初审

- `pr_review_checklist.md`
- `pr_review_report_template.md`
- `pr_review_risk_matrix.md`

### GitHub Actions 落地

- `github_actions_minimal_ci.md`
- `customer_workflow_install_guide.md`
- `workflow_debug_checklist.md`

### AI 分析

- `ai_analysis_prompt.md`
- `ai_analysis_sop.md`
- `ai_output_review_checklist.md`
- `client_delivery_format.md`

### 交付包

- `delivery_pack_spec.md`
- `delivery_pack_template.md`
- `next_steps_template.md`
- `risk_confirmation_template.md`
- `delivery_handoff_template.md`

### Demo 与案例

- `demo_*`
- `full_demo_case_walkthrough.md`
- `case_showcase_page.md`
- `case_summary_template.md`
- `before_after_template.md`
- `result_showcase_sop.md`
- `showcase_assets_checklist.md`

### 获客与试点

- `outreach_message_templates.md`
- `pilot_offer_templates.md`
- `lead_scoring.md`
- `discovery_call_script.md`
- `first_50_leads_plan.md`
- `lead_tracker_template.md`
- `pilot_feedback_form.md`
- `case_permission_template.md`
- `followup_sop.md`
- `client_status_definitions.md`
- `pilot_execution_pack.md`
- `pilot_acceptance_criteria.md`
- `pilot_to_paid_conversion_sop.md`

## 怎么用这个仓库

如果你是自己用：

先看 `README.md`，再按服务需要进入 `service_kit/` 对应模块。

如果你是客户：

先看服务介绍、套餐、FAQ、案例展示。

如果你是后续协作者：

先看 `final_service_blueprint.md` 和 `customer_delivery_playbook.md`。
