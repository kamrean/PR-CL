# GitHub Actions 最小 CI 说明

## 目标

先给仓库补一条最基础、最安全、最容易维护的 CI。

## 当前模板提供什么

- 自动安装依赖
- 自动跑仓库中已经配置好的最小核心检查
- 明确最小 `permissions`
- 默认不启用自动 artifact 上传

## 当前模板不承诺什么

- 生产部署
- 高权限 workflow
- OIDC 配置
- 多语言复杂矩阵
- 对所有语言统一提供 lint / build 约定

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

## Node / Python 模板差异

Node 模板：

- 如果 `package.json` 中存在 `lint`、`test`、`build`，就依次运行
- 不存在的脚本会被跳过

Python 模板：

- 默认安装依赖并执行 `pytest`
- 不默认假设存在统一的 `lint` 或 `build` 命令
- 需要时再按仓库实际情况扩展
