# CI 红灯诊断检查清单

## 当前默认支持范围

这份清单当前默认适用于：

- GitHub Actions
- Node 项目
- Python 项目

以下场景默认按单评估，不作为标准交付承诺：

- GitLab CI
- Jenkins
- CircleCI
- Vercel / Netlify / Cloudflare Pages 的平台级问题
- 生产部署失败

## 固定输出

每次诊断都要输出：

1. 失败步骤
2. 关键日志
3. 根因判断
4. 修复建议
5. 验证命令
6. 风险等级

## 1. 基本信息

记录：

- 仓库名称
- CI 系统
- workflow 名称
- job 名称
- step 名称
- 触发方式
- 失败时间

## 2. 定位失败步骤

先确认到底是哪一步失败：

- install
- lint
- test
- build
- permissions
- secrets
- third-party service

## 3. 提取关键日志

只提取最有价值的 10-30 行。

优先提：

- Error
- Failed
- Exception
- Traceback
- Cannot find module
- command not found
- permission denied
- timeout
- exit code

不要直接贴：

- 大段安装日志
- 重复 warning
- 未脱敏日志

## 4. 判断失败类型

常见类型：

- 依赖安装失败
- 命令缺失
- 测试失败
- lint 失败
- 构建失败
- 权限失败
- secrets 缺失
- 网络失败

## 5. 根因判断

根因判断要写成可验证假设，而不是空话。

好写法：

- 失败大概率由 Node 版本不匹配导致，因为日志显示依赖要求 Node 20，但 workflow 当前使用的是 Node 18。

坏写法：

- CI 有问题。
- 可能是环境问题。

## 6. 修复建议

每条建议都要包括：

- 改哪里
- 为什么改
- 改完怎么验证
- 风险等级

## 7. 验证命令

Node 常见：

```bash
npm ci
npm test
npm run lint
npm run build
```

Python 常见：

```bash
pip install -r requirements.txt
pytest
ruff check .
```

## 8. 风险等级

低风险：

- lint / format
- workflow 漏步骤
- 版本不一致

中风险：

- 测试断言失败
- 依赖升级
- 环境变量配置

高风险：

- secrets 泄露
- 权限问题
- 支付、登录、权限、数据库、生产部署

## 9. 是否适合自动修复

适合：

- 格式问题
- lint 问题
- 明确的 workflow 小修

不适合：

- 业务逻辑失败
- 权限与 secrets
- 数据库和生产部署
