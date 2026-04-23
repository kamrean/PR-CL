param(
  [Parameter(Mandatory = $true)][string]$Repo,
  [Parameter(Mandatory = $true)][string]$PrTitle,
  [Parameter(Mandatory = $true)][string]$PrUrl,
  [Parameter(Mandatory = $true)][string]$OutputPath
)

$content = @"
# PR 初审报告

## 基本信息

- 仓库：$Repo
- PR 标题：$PrTitle
- PR 链接：$PrUrl

## 本次改动摘要

- 待补充

## 潜在 bug

- 待补充

## 缺失测试

- 待补充

## 兼容性风险

- 待补充

## 安全或权限风险

- 待补充

## Reviewer 重点关注项

- 待补充

## 是否建议合并

- [ ] 建议合并
- [ ] 建议修改后合并
- [ ] 暂不建议合并
"@

Set-Content -LiteralPath $OutputPath -Value $content -Encoding utf8
Write-Output "Created report skeleton: $OutputPath"
