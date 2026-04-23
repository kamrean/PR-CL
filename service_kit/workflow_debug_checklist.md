# GitHub Actions 调试清单

## 先确认触发

- workflow 是否在正确目录
- 事件是否配置正确
- 默认分支名称是否一致

## 再确认环境

- Node / Python 版本是否匹配
- 依赖文件是否存在
- 命令是否真实可运行

## 再确认权限

- `permissions` 是否足够但不过大
- 是否错误依赖 secrets
- 是否在不可信 PR 上放大权限

## 再确认输出

- 错误是否能定位到具体 step
- 是否上传了不该上传的 artifact
- retention 是否过长
