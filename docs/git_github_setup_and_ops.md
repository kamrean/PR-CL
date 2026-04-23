# Git / GitHub 操作手册

## 当前本地设置

Git 安装位置：

```text
C:\Program Files\Git\cmd\git.exe
```

项目仓库位置：

```text
D:\赛道研究\pr-ci-mvp
```

如果 PowerShell 不能直接识别 `git`，先使用完整路径：

```powershell
& "C:\Program Files\Git\cmd\git.exe" --version
```

## 建议把 Git 加入 PATH

把下面路径加入 Windows 环境变量 Path：

```text
C:\Program Files\Git\cmd
```

之后重新打开 PowerShell，验证：

```powershell
git --version
where git
```

## 第一次配置 Git 身份

```powershell
git config --global user.name "你的名字"
git config --global user.email "你的邮箱"
```

查看配置：

```powershell
git config --global --list
```

## 初始化本地仓库

```powershell
cd D:\赛道研究\pr-ci-mvp
git init
git add .
git commit -m "Initial PR CI MVP service kit"
```

如果 `git` 仍不可用：

```powershell
cd D:\赛道研究\pr-ci-mvp
& "C:\Program Files\Git\cmd\git.exe" init
& "C:\Program Files\Git\cmd\git.exe" add .
& "C:\Program Files\Git\cmd\git.exe" commit -m "Initial PR CI MVP service kit"
```

## 推到 GitHub

先在 GitHub 网站创建一个空仓库，例如：

```text
pr-ci-red-light-clinic
```

然后本地运行：

```powershell
git branch -M main
git remote add origin https://github.com/YOUR_NAME/pr-ci-red-light-clinic.git
git push -u origin main
```

## 日常工作流

查看改动：

```powershell
git status
git diff
```

提交改动：

```powershell
git add .
git commit -m "Add CI diagnosis template"
```

推送：

```powershell
git push
```

拉取远端更新：

```powershell
git pull
```

## 分支工作流

创建新分支：

```powershell
git switch -c codex/day7-pr-review-template
```

提交后推送分支：

```powershell
git push -u origin codex/day7-pr-review-template
```

然后在 GitHub 上开 PR。

## 安全注意

不要提交：

- `.env`
- API key
- token
- cookie
- private key
- 客户原始日志
- 客户未脱敏截图
- 真实用户个人信息

如果误提交密钥：

1. 立即删除文件。
2. 立即轮换密钥。
3. 不要只靠 git 删除历史来解决。
4. 在客户报告里标记为高风险。
