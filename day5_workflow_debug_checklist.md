# Day 5 - GitHub Actions 调试清单

## 使用目的

当客户的 GitHub Actions workflow 跑不通时，用这份清单快速定位问题。

## 1. Workflow 是否被触发

检查：

- workflow 文件是否在 `.github/workflows/`
- 文件后缀是否是 `.yml` 或 `.yaml`
- on 配置是否包含 pull_request 或 push
- 当前分支是否匹配 branches 配置

常见问题：

- workflow 放错目录
- 默认分支不是 main
- push 到了非触发分支

## 2. YAML 是否有语法错误

检查：

- 缩进是否正确
- 冒号后是否有空格
- 字符串是否需要引号
- steps 是否在 jobs 下

常见问题：

- 缩进错误
- branches 写法错误
- run 多行命令格式错误

## 3. checkout 是否成功

检查：

- 是否使用 actions/checkout
- 是否有 contents: read 权限
- 私有子模块是否需要额外权限

常见问题：

- 没有 checkout 就直接跑命令
- 子模块没有拉下来

## 4. 运行环境是否正确

Node 项目检查：

- Node 版本是否匹配
- 是否有 package-lock.json
- npm ci 是否适用
- 是否应该用 pnpm 或 yarn

Python 项目检查：

- Python 版本是否匹配
- requirements.txt 是否存在
- pyproject.toml 是否需要特殊安装方式
- pytest 是否已安装

## 5. 命令是否存在

Node 项目检查：

```bash
npm run
```

确认 scripts 里是否有：

- test
- lint
- build

Python 项目检查：

确认是否能运行：

```bash
pytest
python -m pytest
```

## 6. Secrets 是否缺失

检查：

- workflow 是否需要环境变量
- GitHub Secrets 是否已配置
- secret 名称是否拼错
- fork PR 是否拿不到 secrets

注意：

不要在日志里打印 secrets。

## 7. 依赖安装是否失败

检查：

- lock 文件是否冲突
- 包管理器是否选错
- 网络是否超时
- 依赖是否要求特定 Node/Python 版本

常见处理：

- 固定运行版本
- 使用正确包管理器
- 清理错误 lock 文件需要客户确认

## 8. 测试或构建是否失败

检查：

- 是代码问题还是环境问题
- 本地是否能复现
- 是否缺少测试数据
- 是否缺少环境变量
- 是否大小写路径问题

不要直接做：

- 跳过测试
- 删除失败测试
- 降低检查严格度

## 9. Artifact 是否上传

检查：

- upload-artifact 是否只在 failure 时运行
- path 是否存在
- if-no-files-found 是否设为 ignore
- retention-days 是否合理

## 10. 最小修复原则

优先按以下顺序修：

1. 修 workflow 路径和触发条件。

2. 修环境版本。

3. 修安装命令。

4. 修缺失脚本。

5. 修测试或构建问题。

6. 最后再考虑重构 CI。
