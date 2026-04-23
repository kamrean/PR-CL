# PR/CI Red Light Clinic

面向小团队、学生项目、独立开发者和旧仓库维护者的轻量工程化服务包。

最终目标：

1. 仓库体检
2. CI 红灯诊断
3. PR/CI 自动化落地包

第一阶段不做完整 SaaS，不卖账号，不做海外模型访问转售，不承诺全自动改业务代码。先用可交付服务验证需求，再逐步沉淀自动化工具。

## 服务包

### 1. 仓库体检

检查固定项：

- README
- 依赖安装
- 测试命令
- CI 配置
- secrets 风险
- PR 模板
- 分支保护

对应文件：

- [仓库体检检查清单](day3_repo_audit_checklist.md)
- [仓库体检报告模板](day3_repo_audit_report_template.md)
- [风险分级标准](day3_risk_level_standard.md)

### 2. CI 红灯诊断

固定输出：

- 失败步骤
- 关键日志
- 根因判断
- 修复建议
- 验证命令
- 风险等级

对应文件：

- [CI 红灯诊断清单](day4_ci_red_checklist.md)
- [CI 红灯诊断报告模板](day4_ci_red_report_template.md)
- [CI 日志提取规则](day4_ci_log_extraction_rules.md)
- [CI 红灯风险矩阵](day4_ci_red_risk_matrix.md)

### 3. PR/CI 自动化落地包

当前包含：

- Node 最小 CI workflow
- Python 最小 CI workflow
- artifact 上传片段
- GitHub Actions 落地说明
- workflow 调试清单

对应目录：

- [workflow_templates](workflow_templates)
- [GitHub Actions 最小 CI 说明](day5_github_actions_minimal_ci.md)
- [客户落地说明](day5_customer_workflow_install_guide.md)
- [workflow 调试清单](day5_workflow_debug_checklist.md)

## AI 使用边界

AI 只做辅助分析，不直接替代人工交付。

必须人工复核：

- CI 根因判断
- 修复建议
- PR review 建议
- secrets / token / 用户信息
- 登录、支付、权限、数据库、生产部署等高风险内容

对应文件：

- [AI 分析提示词](day6_ai_analysis_prompt.md)
- [AI 输出复核清单](day6_ai_output_review_checklist.md)
- [客户交付格式](day6_client_delivery_format.md)

## GitHub 仓库建议结构

```text
.
├── .github/
│   ├── ISSUE_TEMPLATE/
│   ├── workflows/
│   └── pull_request_template.md
├── docs/
├── workflow_templates/
├── README.md
└── day*.md
```

## 本地 Git 初始化

如果 PowerShell 找不到 `git`，可以先用完整路径：

```powershell
& "C:\Program Files\Git\cmd\git.exe" --version
```

初始化仓库：

```powershell
cd D:\赛道研究\pr-ci-mvp
& "C:\Program Files\Git\cmd\git.exe" init
& "C:\Program Files\Git\cmd\git.exe" add .
& "C:\Program Files\Git\cmd\git.exe" commit -m "Initial PR CI MVP service kit"
```

推送 GitHub：

```powershell
& "C:\Program Files\Git\cmd\git.exe" branch -M main
& "C:\Program Files\Git\cmd\git.exe" remote add origin https://github.com/YOUR_NAME/YOUR_REPO.git
& "C:\Program Files\Git\cmd\git.exe" push -u origin main
```

建议后续把 `C:\Program Files\Git\cmd` 加入 Windows PATH，这样就可以直接使用 `git`。
