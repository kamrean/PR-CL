# Day 5 - 基础 GitHub Actions 最小 CI 模板

## 今日目标

做出一套可以直接放进客户仓库的最小 GitHub Actions CI 模板。

最小 CI 要覆盖：

1. checkout 代码
2. 设置 Node 或 Python 环境
3. 安装依赖
4. 运行 test / lint / build
5. 上传日志或产物 artifact

## 适用场景

这套模板适合第一阶段服务：

- 仓库体检后补基础 CI
- CI 红灯诊断后修复 workflow
- 给学生项目、小团队、旧仓库落地自动检查

## 最小 CI 的原则

1. 先跑通，再变复杂。

2. 先使用 GitHub-hosted runner。

3. 先只做 test / lint / build 中最有把握的一项。

4. 不在 workflow 中写明文密钥。

5. 不给 workflow 过大权限。

6. 每个失败都要能看出是哪一步失败。

## 推荐触发方式

```yaml
on:
  pull_request:
  push:
    branches: [main]
```

含义：

- 有人开 PR 时跑 CI。
- 有人推送到 main 时跑 CI。

## 推荐基础权限

```yaml
permissions:
  contents: read
```

含义：

CI 只需要读取代码，不要默认给写权限。

如果后面要自动评论 PR、创建修复 PR，再单独加权限。

## Node 项目最小流程

适合：

- React
- Vue
- Vite
- Next.js
- Node.js 后端

基本步骤：

1. checkout
2. setup-node
3. npm ci
4. npm run lint
5. npm test
6. npm run build
7. 上传测试/构建产物

## Python 项目最小流程

适合：

- pytest 项目
- Python 小工具
- 数据分析脚本
- FastAPI / Flask 项目

基本步骤：

1. checkout
2. setup-python
3. pip install
4. pytest
5. ruff/flake8 可选
6. 上传测试日志

## 客户落地前必须确认

1. 项目语言是什么。

2. 依赖安装命令是什么。

3. 测试命令是什么。

4. lint 命令是什么。

5. build 命令是什么。

6. 是否需要环境变量。

7. 是否有 secrets。

8. 默认分支是 main 还是 master。

## Day 5 完成标准

完成以下模板：

1. Node 最小 CI workflow

2. Python 最小 CI workflow

3. 通用 artifact 上传模板

4. 客户落地说明

5. workflow 调试清单
