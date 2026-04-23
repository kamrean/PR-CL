# PR/CI Red Light Clinic

这是一个用于验证 `GitHub 仓库体检 + CI 红灯诊断 + PR/CI 自动化落地包` 的本地项目骨架。

当前目标：

1. 沉淀仓库体检模板。
2. 沉淀 CI 红灯诊断模板。
3. 提供可复用 GitHub Actions workflow。
4. 后续可扩展为客户交付仓库或服务官网仓库。

## 当前目录建议

```text
repo_scaffold/
  README.md
  docs/
  templates/
  workflows/
```

## 初始化 Git 仓库的方法

当前机器暂时没有可用的 `git` 命令。安装 Git 后，在本目录运行：

```powershell
git init
git add .
git commit -m "Initial PR CI MVP scaffold"
```

如果要推到 GitHub：

```powershell
git branch -M main
git remote add origin https://github.com/YOUR_NAME/YOUR_REPO.git
git push -u origin main
```

## 第一阶段服务

第一阶段只做三件事：

1. 仓库体检。
2. CI 红灯诊断。
3. 基础 GitHub Actions 落地。

暂不做：

- 全自动改业务代码
- 生产部署
- 账号转售
- 未脱敏敏感日志处理

## 参考主仓库材料

当前主仓库的标准材料统一放在：

```text
../service_kit/
```

其中 AI 分析 SOP 参考：

```text
../service_kit/ai_analysis_sop.md
```
