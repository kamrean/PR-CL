# 推送前检查清单

## 使用目标

在把本地仓库 push 到 GitHub 之前，做最后一次检查，避免把不该公开的内容一起推上去。

## 1. Git 状态

- [ ] `git status` 干净
- [ ] 当前分支是 `main`
- [ ] 最新 commit 信息清楚
- [ ] 远端 `origin` 指向正确仓库

## 2. 文件安全

- [ ] 没有 `.env`
- [ ] 没有 token
- [ ] 没有 key
- [ ] 没有 cookie
- [ ] 没有 private key
- [ ] 没有未脱敏客户日志
- [ ] 没有真实用户个人信息

## 3. 仓库结构

- [ ] README 可读
- [ ] `service_kit/` 结构清楚
- [ ] `workflow_templates/` 文件存在
- [ ] `.github/` 模板存在
- [ ] docs-check workflow 文件存在

## 4. 展示入口

- [ ] README 有“先看这里”
- [ ] README 有服务包入口
- [ ] README 有获客与试点入口
- [ ] README 有案例展示入口
- [ ] README 链接没有失效

## 5. 商业完整性

- [ ] 服务介绍存在
- [ ] 套餐与定价存在
- [ ] FAQ 存在
- [ ] Demo 存在
- [ ] 试点执行 SOP 存在
- [ ] 案例展示材料存在

## 6. 推送命令

完成以上检查后再执行：

```powershell
git push
```

## 7. 推送后要检查什么

1. GitHub 仓库首页是否正常显示 README
2. 文件目录结构是否清楚
3. `service_kit/` 是否可见
4. `.github/ISSUE_TEMPLATE/` 是否存在
5. `workflow_templates/` 是否存在
