# GitHub Actions 安全基线

## 目标

这份文档定义 `GitHub Actions 落地包` 的最低安全要求。

## 默认原则

1. 默认最小权限
2. 默认不处理未脱敏敏感数据
3. 默认不在 workflow 里写死密钥
4. 默认不在不可信代码上下文里放大权限
5. 默认先让 CI 可读、可控，再考虑自动化增强

## 工作流权限

最低要求：

- `permissions` 明确写在 workflow 里
- 默认只给 `contents: read`
- 非必要不申请 `pull-requests: write`
- 非必要不申请 `actions: write`
- 非必要不申请 `id-token: write`

## 事件触发

默认允许：

- `pull_request`
- `push`
- 手动 `workflow_dispatch`

默认禁止作为基础模板使用：

- `pull_request_target` 直接跑不可信代码

如果未来必须使用 `pull_request_target`，要先单独评估：

- fork PR 风险
- secrets 暴露风险
- 评论触发命令注入风险

## Actions 依赖

建议：

- 对外正式交付时，优先使用 commit SHA pinning
- 如果先用主版本标签，必须在交付说明里写明后续要升级到 SHA pinning
- 只使用可信、维护活跃的官方 actions 或客户批准的 actions

## Branch 与 PR 保护

建议客户至少开启：

- branch protection
- required checks
- 禁止直接 push 到默认分支
- PR 合并前必须通过 CI

## Secrets 与环境变量

规则：

- 只使用 GitHub Secrets 或受控环境变量
- 不把 token、key、cookie 写进 workflow
- 不在日志里打印 secrets
- 发现泄露迹象时立即停止交付并通知客户

## Artifacts

规则：

- 默认不上传构建产物目录
- 默认不上传测试截图目录
- 默认不上传完整日志目录
- 只上传经 allowlist 明确允许的调试材料
- retention 时间尽量短

## Fork PR 策略

对于 fork 提交：

- 默认只跑只读检查
- 默认不注入高权限 token
- 默认不开放写操作

## 最终检查

一套 workflow 在交付前，至少要回答：

1. 这个 workflow 最多能访问什么
2. 它会不会碰到 secrets
3. 它会不会在不可信 PR 上放大权限
4. 它上传了什么 artifacts
5. 客户是否知道并同意这些边界
