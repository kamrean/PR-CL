# 客户交付 Playbook

## 总流程

1. 收集客户信息。
2. 判断是否可接单。
3. 做仓库体检或 CI 诊断。
4. 人工复核 AI 输出。
5. 生成客户报告。
6. 给下一步建议。
7. 争取升级到落地包或月度托管。

## Step 1：客户信息收集

使用：

- `day1_customer_intake.md`
- GitHub issue 模板 `repo-audit.md`
- GitHub issue 模板 `ci-red-diagnosis.md`

必须确认：

- 仓库链接
- 技术栈
- 默认分支
- 运行命令
- CI 链接或日志
- 是否脱敏
- 是否允许创建 PR

## Step 2：接单判断

可以接：

- 公开仓库
- 已脱敏日志
- 低风险 CI 红灯
- 小团队基础工程化问题
- 客户愿意提供必要上下文

谨慎接：

- 私有仓库
- 权限问题
- 环境变量复杂
- 涉及部署
- 依赖生产服务

不建议接：

- 未脱敏日志
- 要求代登录
- 要求共享模型账号
- 涉及真实用户敏感信息
- 要求直接修生产事故

## Step 3：仓库体检

使用：

- `day3_repo_audit_checklist.md`
- `day3_repo_audit_report_template.md`
- `day3_risk_level_standard.md`

输出：

- 总分
- 健康等级
- 三个最重要问题
- 三个优先修复动作

## Step 4：CI 红灯诊断

使用：

- `day4_ci_red_checklist.md`
- `day4_ci_red_report_template.md`
- `day4_ci_log_extraction_rules.md`
- `day4_ci_red_risk_matrix.md`

输出：

- 失败步骤
- 关键日志
- 根因判断
- 修复建议
- 验证命令
- 风险等级

## Step 5：PR/CI 自动化落地

使用：

- `workflow_templates/node-minimal-ci.yml`
- `workflow_templates/python-minimal-ci.yml`
- `workflow_templates/artifact-on-failure-snippet.yml`
- `day5_customer_workflow_install_guide.md`
- `day5_workflow_debug_checklist.md`

交付：

- `.github/workflows/ci.yml`
- workflow 说明
- 验收标准
- 后续优化建议

## Step 6：AI 输出复核

使用：

- `day6_ai_analysis_prompt.md`
- `day6_ai_output_review_checklist.md`
- `day6_client_delivery_format.md`

必须复核：

- 是否误判
- 是否编造
- 是否遗漏第一条 error
- 是否泄露敏感信息
- 是否建议跳过测试
- 是否涉及高风险内容

## Step 7：升级销售

如果客户只是买单次诊断：

推荐升级仓库体检。

如果客户买了仓库体检：

推荐升级 GitHub Actions 落地包。

如果客户买了落地包：

推荐升级月度 PR/CI 托管。

## 交付话术

仓库体检后：

这次体检发现仓库最大问题不是代码功能本身，而是缺少自动验证和协作保护。建议先补基础 CI 和 PR 模板，这样后续每次提交都能提前发现问题。

CI 红灯诊断后：

这次红灯的关键原因已经定位，建议先按报告里的验证命令复现，再决定是否由我们继续创建修复 PR。

自动化落地后：

现在仓库已经具备基础 CI。后续每次 PR 都会自动检查，下一步可以接入红灯诊断和 PR 初审。
