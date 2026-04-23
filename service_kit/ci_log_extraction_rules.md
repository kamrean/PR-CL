# CI 日志提取规则

## 目标

从长日志里提取最有价值、最适合交付和分析的内容。

## 优先提取的内容

- 第一条真实错误
- 对应失败命令
- 关键堆栈或异常片段
- exit code
- permission denied
- missing secret
- timeout

## 不要直接交付的内容

- 大段安装日志
- 重复 warning
- 未脱敏长日志
- 含 token、key、cookie 的原文

## 建议长度

- 客户可读摘要：3-10 行
- AI 辅助分析输入：10-30 行

## 脱敏要求

交付前删掉或替换：

- token
- key
- cookie
- private key
- 内网地址
- 数据库连接信息
- 客户身份信息
