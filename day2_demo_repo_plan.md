# Day 2 - 样板仓库准备计划

## 今日目标

准备 3 个可以反复演示的样板场景，用来证明我们能完成：

1. 仓库体检
2. CI 红灯诊断
3. 基础 GitHub Actions 落地

Day 2 不追求接真实客户，先追求有可演示、可复盘、可写成案例的 demo。

## 样板仓库选择原则

一个合格样板仓库应该满足：

1. 代码量不要太大，最好 10-100 个文件。
2. 技术栈常见，例如 Node.js、Python、前端项目。
3. 能通过 README 或 package 文件看出如何运行。
4. 可以制造一个 CI 失败点。
5. 不包含真实密钥、真实用户数据、生产配置。
6. 适合截图、写报告、展示前后对比。

## 三个建议样板场景

### 场景 A：前端项目 CI 红灯

客户画像：

- 独立开发者
- 学生项目队
- 小型前端外包团队

常见问题：

- npm install 失败
- test 命令不存在
- lint 失败
- build 失败
- Node 版本不一致

要演示的服务能力：

- 识别 package.json 中的 scripts
- 判断 CI 失败步骤
- 提出修复建议
- 给出基础 GitHub Actions workflow

建议制造的错误：

- workflow 中使用错误 Node 版本
- package.json 缺少 test 脚本
- eslint 报错
- build 命令失败

### 场景 B：Python 项目测试失败

客户画像：

- 数据分析学生
- Python 小工具作者
- 后端新手
- 自动化脚本团队

常见问题：

- requirements.txt 缺依赖
- pytest 失败
- Python 版本不一致
- 路径问题
- 环境变量缺失

要演示的服务能力：

- 读取 requirements / pyproject
- 判断 pytest 失败原因
- 区分依赖问题和代码问题
- 给出验证命令

建议制造的错误：

- requirements.txt 缺少 pytest
- 测试断言失败
- import 路径错误
- workflow 没有安装依赖

### 场景 C：旧仓库工程化体检

客户画像：

- 开源维护者
- 小 SaaS 团队
- 外包团队接手旧项目
- 学生毕业项目

常见问题：

- README 不清楚
- 没有 CI
- 没有 PR 模板
- 没有测试命令说明
- 依赖版本不固定
- secrets 风险

要演示的服务能力：

- 输出仓库体检报告
- 给风险分级
- 给修复优先级
- 提供最小 GitHub Actions 落地建议

建议制造的问题：

- README 只有一句话
- 没有 .github/workflows
- 没有 .gitignore
- 没有贡献说明
- 没有测试命令

## Day 2 推荐目录结构

后续可以在工作区建立：

```text
pr-ci-mvp/
  examples/
    frontend-ci-red/
    python-test-red/
    legacy-repo-audit/
  reports/
    demo-frontend-ci-red.md
    demo-python-test-red.md
    demo-legacy-repo-audit.md
```

当前 Day 2 先完成方案和表格，Day 3 再进入仓库体检模板。

## 今日完成标准

1. 明确 3 个 demo 场景。
2. 每个 demo 场景有客户画像、常见问题、演示能力、可制造错误。
3. 有一份案例记录表，后续每做一个 demo 都能照着填。
4. 有一份样板仓库打分表，用来判断 demo 是否适合展示。
