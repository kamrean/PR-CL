# Day 4 - CI 红灯诊断检查清单

## 使用方式

这份清单用于诊断一次 CI 失败。目标不是马上改代码，而是先把失败原因讲清楚，让客户知道下一步该怎么处理。

每次诊断都要输出 6 件事：

1. 失败步骤
2. 关键日志
3. 根因判断
4. 修复建议
5. 验证命令
6. 风险等级

## 1. 基本信息

需要记录：

- 仓库链接
- PR 链接
- CI 系统
- 失败 workflow 名称
- 失败 job 名称
- 失败 step 名称
- 触发方式
- 失败时间
- commit SHA

常见 CI 系统：

- GitHub Actions
- GitLab CI
- Vercel
- Netlify
- Cloudflare Pages
- Jenkins
- CircleCI

## 2. 定位失败步骤

检查目标：

先找出到底是哪一步失败，而不是直接看整段日志。

要查：

- 是 install 失败吗
- 是 lint 失败吗
- 是 test 失败吗
- 是 build 失败吗
- 是 deploy 失败吗
- 是权限或 secrets 失败吗
- 是网络或第三方服务失败吗

客户可读解释：

CI 日志通常很长，第一步不是通读全部日志，而是先定位“哪一步红了”。

## 3. 提取关键日志

检查目标：

从长日志里提取最有价值的 10-30 行。

优先找：

- Error
- Failed
- Exception
- Traceback
- Cannot find module
- command not found
- permission denied
- timeout
- exit code
- test failed
- build failed
- missing secret
- authentication failed

不要直接复制：

- 大量无关安装日志
- 重复 warning
- 含 token、key、cookie、用户信息的日志

客户可读解释：

关键日志是诊断证据。报告里只放关键错误，不堆一大段没人看的原始日志。

## 4. 判断失败类型

常见失败类型：

| 类型 | 常见表现 | 典型原因 |
|---|---|---|
| 依赖安装失败 | npm install / pip install 失败 | lock 文件冲突、版本不兼容、依赖源问题 |
| 命令缺失 | command not found / script missing | scripts 没写、工具没安装 |
| 测试失败 | assertion failed / tests failed | 代码逻辑变了、测试过期、环境不同 |
| lint 失败 | eslint / ruff / flake8 报错 | 格式或规范问题 |
| 构建失败 | build failed / compile error | 类型错误、环境变量缺失、打包配置错误 |
| 权限失败 | permission denied / 403 | token 权限不够、workflow 权限不足 |
| secrets 缺失 | missing secret / undefined env | GitHub Secrets 没配置 |
| 网络失败 | timeout / connection refused | 网络、镜像源、第三方服务不稳定 |
| 部署失败 | deploy failed | 平台配置、权限、环境变量、构建产物错误 |

## 5. 根因判断

根因判断要写成可验证假设。

好写法：

- 失败大概率由 Node 版本不匹配导致，因为日志显示 package 要求 Node 20，但 CI 使用 Node 18。
- 失败大概率由缺少环境变量导致，因为 build 阶段提示 `DATABASE_URL is not defined`。
- 失败大概率由测试断言未更新导致，因为业务输出变了，但测试仍期待旧值。

坏写法：

- CI 有问题。
- 代码有 bug。
- 可能是环境问题。
- 建议检查一下。

## 6. 修复建议

每条修复建议都要包含：

- 要改哪里
- 为什么改
- 改完怎么验证
- 风险等级

示例：

建议在 workflow 中把 Node 版本从 18 改为 20，因为 package.json 的 engines 要求 Node 20。改完后重新运行 `npm ci` 和 `npm run build` 验证。

## 7. 验证命令

客户最需要的是下一步能做什么。

常见验证命令：

Node 项目：

```bash
npm ci
npm test
npm run lint
npm run build
```

Python 项目：

```bash
pip install -r requirements.txt
pytest
ruff check .
python -m pytest
```

通用：

```bash
git status
git diff
```

## 8. 风险等级

低风险：

- lint / format
- 测试命令缺失
- Node/Python 版本不一致
- workflow 少装依赖
- README 命令不一致

中风险：

- 测试断言失败
- 依赖升级
- 构建配置修改
- 环境变量配置
- 权限配置

高风险：

- secrets 泄露
- token 权限过大
- 登录、支付、权限相关失败
- 数据库迁移失败
- 生产部署失败
- 删除数据或覆盖数据

## 9. 是否适合自动修复

适合自动修复：

- 格式问题
- lint 问题
- 明确版本不匹配
- workflow 缺少基础步骤
- README 命令不一致

不适合自动修复：

- 业务逻辑失败
- 登录/支付/权限代码
- 数据库迁移
- 生产部署
- secrets 和权限改动

需要客户确认：

- 升级依赖
- 修改测试断言
- 改环境变量
- 改部署配置

## 10. 诊断完成标准

一份合格 CI 红灯诊断必须包含：

- 失败步骤
- 关键日志
- 根因判断
- 修复建议
- 验证命令
- 风险等级
- 是否建议自动修复
- 是否需要客户确认
