# GitHub Actions 最小 CI 说明

## 目标

先给仓库补一条最基础、最安全、最容易维护的 CI。

## 当前模板提供什么

- 自动安装依赖
- 自动跑 test / lint / build
- 失败时保留低风险调试证据
- 明确最小 `permissions`

## 当前模板不承诺什么

- 生产部署
- 高权限 workflow
- OIDC 配置
- 多语言复杂矩阵

## 适合的仓库

- GitHub 托管仓库
- Node 项目
- Python 项目
- 还没有基础 CI 的项目

## 交付标准

1. PR 可自动触发检查
2. CI 至少能跑一项核心命令
3. 失败时能快速定位问题
4. Workflow 权限边界清楚
