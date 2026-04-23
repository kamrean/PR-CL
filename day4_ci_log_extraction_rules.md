# Day 4 - CI 日志提取规则

## 目的

CI 日志通常很长。我们要从日志里提取真正有诊断价值的内容，而不是把整段日志复制给客户。

## 提取顺序

1. 先找失败 step。

2. 再找失败命令。

3. 再找第一条真正的 error。

4. 再看 error 上下文前后 10 行。

5. 最后确认是否有 secrets 或敏感信息。

## 优先关键词

优先搜索这些词：

```text
error
failed
failure
exception
traceback
fatal
cannot find
not found
permission denied
access denied
unauthorized
forbidden
timeout
exit code
missing
undefined
authentication failed
secret
```

Node 项目额外关注：

```text
npm ERR!
pnpm ERR!
yarn error
Cannot find module
Module not found
ELIFECYCLE
ERESOLVE
peer dependency
node version
```

Python 项目额外关注：

```text
Traceback
ModuleNotFoundError
ImportError
AssertionError
pytest
No module named
SyntaxError
TypeError
```

前端构建额外关注：

```text
Build failed
Type error
ESLint
Vite
Next.js
webpack
Rollup
```

## 不建议放进报告的内容

不要放：

- 完整 token
- API key
- cookie
- private key
- 数据库连接串
- 用户手机号
- 用户邮箱列表
- 生产服务器地址
- 大段重复 warning
- 大段无关安装日志

## 报告里的日志格式

建议格式：

```text
Step: npm run build
Error:
Module not found: Can't resolve './components/Button'
Exit code: 1
```

然后用 1-3 句话解释：

这说明构建阶段找不到 `./components/Button` 文件。常见原因是文件名大小写不一致、路径写错，或文件未提交到仓库。

## 日志脱敏规则

如果看到疑似敏感内容：

1. 不要复制原文。

2. 用占位符替代。

示例：

```text
DATABASE_URL=postgres://[REDACTED]
OPENAI_API_KEY=[REDACTED]
token=[REDACTED]
```

3. 在报告中提醒客户：

日志中出现疑似敏感配置，建议立即确认是否真实泄露。如已泄露，应轮换相关密钥。

## 最小关键日志长度

建议：

- 最少 5 行
- 最多 30 行

例外：

如果是 Python traceback，可以保留关键调用栈，但仍要删掉无关重复部分。

## 人工复核点

每次提取日志后，人工至少检查：

- 是否包含密钥
- 是否包含个人信息
- 是否能看出失败命令
- 是否能支撑根因判断
- 是否过度复制无关内容
