# Day 5 - 客户 GitHub Actions 落地说明

## 交付目标

把一个没有基础 CI 的仓库，改造成每次 PR 都能自动检查的仓库。

第一版只追求：

1. 能自动安装依赖。

2. 能自动运行测试、lint 或 build。

3. 失败时能看出是哪一步失败。

4. 失败时能上传必要的日志或 artifact。

## 客户需要提供

1. 仓库链接。

2. 默认分支名称。

3. 技术栈。

4. 安装依赖命令。

5. 测试命令。

6. lint 命令。

7. build 命令。

8. 是否需要环境变量。

9. 是否已有 GitHub Secrets。

## Node 项目落地步骤

1. 确认仓库根目录有 package.json。

2. 确认 package.json 中 scripts 是否包含 test、lint、build。

3. 选择 `node-minimal-ci.yml`。

4. 根据客户项目修改 Node 版本。

5. 放入 `.github/workflows/ci.yml`。

6. 创建一个测试 PR。

7. 查看 Actions 是否跑通。

## Python 项目落地步骤

1. 确认仓库有 requirements.txt 或 pyproject.toml。

2. 确认是否有 tests 目录。

3. 确认测试工具是 pytest 还是 unittest。

4. 选择 `python-minimal-ci.yml`。

5. 根据客户项目修改 Python 版本。

6. 放入 `.github/workflows/ci.yml`。

7. 创建一个测试 PR。

8. 查看 Actions 是否跑通。

## 不确定命令时怎么做

如果客户不知道测试命令：

1. 先看 README。

2. 再看 package.json scripts。

3. 再看 pyproject.toml / tox.ini / pytest.ini。

4. 仍不确定时，先只跑 install 和 build。

5. 在报告中标注“测试入口不明确，需要补充”。

## Secrets 处理原则

1. 不把任何密钥写进 workflow。

2. 需要密钥时使用 GitHub Secrets。

3. 不在日志中打印密钥。

4. 不处理未脱敏日志。

5. 如果发现密钥泄露，建议客户立即轮换。

## 验收标准

客户验收时看 4 点：

1. PR 是否自动触发 CI。

2. CI 是否能安装依赖。

3. CI 是否能跑 test / lint / build。

4. 失败时是否能看出原因。

## 交付话术

这次交付先帮仓库补上最基础的自动检查流程。之后每次开 PR，GitHub 会自动跑测试或构建。这样能提前发现依赖、构建、测试问题，减少合并后才发现错误的情况。

## 后续可升级

1. 接入 PR 自动审查。

2. 接入 CI 红灯自动诊断。

3. 增加 Playwright 前端冒烟测试。

4. 增加 CodeQL 安全扫描。

5. 增加失败日志自动总结。
