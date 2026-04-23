# 服务范围矩阵

## 当前默认支持

这套 MVP 当前主支持：

- GitHub
- GitHub Actions
- Node 项目
- Python 项目

以下内容默认不是标准交付范围，而是 `按单评估`：

- GitLab CI
- Jenkins
- CircleCI
- Vercel / Netlify / Cloudflare Pages 深度问题
- 多语言 monorepo
- 生产部署

## 范围矩阵

| 项目 | 当前默认支持 | 需人工确认 | 默认不做 |
|---|---|---|---|
| 仓库体检 | GitHub 仓库 | 私有仓库 | 账号共享 |
| CI 红灯诊断 | GitHub Actions, Node/Python | 其他 CI 平台 | 生产事故处置 |
| PR 初审 | 普通代码变更 | 权限/支付/登录相关改动 | 高风险业务代改 |
| Actions 落地 | 基础 CI | workflow 扩权、OIDC、环境保护 | 生产部署托管 |
| AI 辅助分析 | 脱敏日志、脱敏配置片段 | 私有代码片段 | 未脱敏敏感数据 |

## 适合先卖的入口包

1. 仓库体检
2. GitHub Actions 的 CI 红灯诊断
3. GitHub Actions 基础落地

## 不要过度承诺

对外说明时，优先说：

`当前默认支持 GitHub Actions + Node/Python；其他平台或更重的交付场景按单评估。`
