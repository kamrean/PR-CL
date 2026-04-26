# 客户 GitHub Actions 落地说明

## 当前默认支持范围

这套 MVP 当前默认支持：

- GitHub Actions
- Node 项目
- Python 项目

其他 CI 平台、其他语言或更复杂的 monorepo 场景，默认 `按单评估`。

## 交付目标

先把仓库补上最基础、最安全、最容易维护的 CI。

第一版只追求：

1. 自动安装依赖
2. 自动跑最小核心检查
3. 失败时能快速定位问题
4. 不默认自动上传调试 artifact

## 客户需要提供

1. 仓库链接
2. 默认分支名称
3. 技术栈
4. 安装命令
5. 测试命令
6. lint 命令
7. build 命令
8. 是否需要环境变量

## 安全基线

落地前必须同步给客户：

- 使用最小 `permissions`
- 默认不在 workflow 里写死密钥
- 默认不用 `pull_request_target`
- 默认只在 PR 和 push 上跑基础检查
- 默认不上传大而全的 artifact
- 默认不启用自动 artifact 上传
- 建议启用 branch protection 和 required checks

详细规则见：

- `service_kit/github_actions_security_baseline.md`
- `service_kit/artifact_allowlist_and_redaction_policy.md`

## Node 项目落地步骤

1. 确认根目录有 `package.json`
2. 确认 `scripts` 里有哪些可运行检查
3. 选择 `workflow_templates/node-minimal-ci.yml`
4. 按客户实际版本调整 Node 版本
5. 放入 `.github/workflows/ci.yml`
6. 用测试 PR 验证

Node 最小模板的实际逻辑：

- `lint` 存在就跑
- `test` 存在就跑
- `build` 存在就跑
- 某个脚本不存在时不会强行失败

## Python 项目落地步骤

1. 确认有 `requirements.txt` 或 `pyproject.toml`
2. 确认测试工具
3. 选择 `workflow_templates/python-minimal-ci.yml`
4. 按客户实际版本调整 Python 版本
5. 放入 `.github/workflows/ci.yml`
6. 用测试 PR 验证

Python 最小模板的实际逻辑：

- 默认安装依赖
- 默认确保 `pytest` 可运行
- 默认执行 `pytest`
- 不默认假设存在统一的 `lint` 或 `build` 命令
- 如需 `ruff`、`flake8`、`mypy` 或打包流程，应按仓库实际情况追加

## Secrets 处理原则

1. 不把 secrets 写进 workflow
2. 需要密钥时使用 GitHub Secrets
3. 不在日志里打印敏感值
4. 发现疑似泄露时立即停止交付

## 验收标准

1. PR 能自动触发 CI
2. CI 能自动安装依赖
3. CI 能跑至少一项核心检查
4. 失败时能看出具体卡点
5. Workflow 权限边界清楚

## 后续可升级方向

1. PR 自动审查
2. CI 红灯自动诊断
3. 更细的缓存和矩阵策略
4. CodeQL 或前端冒烟测试
