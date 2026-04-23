# Before / After 说明模板

## 使用目标

客户最容易理解的不是抽象价值，而是“改之前是什么状态，改之后变成什么状态”。

## 模板

### Before

改之前的状态：

1.
2.
3.

常见写法：

- 没有 CI，代码问题只能靠人工发现
- CI 红灯但没人愿意啃长日志
- PR 没有固定说明格式，review 成本高
- 仓库能跑，但新人接手很慢

### After

改之后的状态：

1.
2.
3.

常见写法：

- 有了基础 GitHub Actions，每次 PR 都会自动检查
- 红灯能快速定位失败步骤和根因
- PR 初审有固定输出，review 更快进入重点
- 仓库体检后，问题优先级清楚了

## 示例 1：CI 红灯诊断

Before：

- GitHub Actions 红灯
- 日志很长
- 客户不知道先看哪一行

After：

- 明确失败步骤是 `npm run build`
- 提取了关键错误日志
- 给出 3 个最可能根因和验证命令

## 示例 2：仓库体检

Before：

- README 不完整
- 没有 CI
- 没有 PR 模板

After：

- 仓库问题按优先级排好了
- 客户知道最值得先补的是基础 CI
- 后续 GitHub Actions 落地路径清楚了

## 使用建议

不要写：

- Before：项目很差
- After：项目变好了

要写：

- Before：没有自动检查
- After：PR 会自动跑 build/test
