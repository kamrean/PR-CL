param(
  [Parameter(Mandatory = $true)][string]$Repo,
  [Parameter(Mandatory = $true)][string]$CiSystem,
  [Parameter(Mandatory = $true)][string]$Workflow,
  [Parameter(Mandatory = $true)][string]$Job,
  [Parameter(Mandatory = $true)][string]$Step,
  [Parameter(Mandatory = $true)][string]$OutputPath,
  [switch]$Force
)

if ((Test-Path -LiteralPath $OutputPath) -and -not $Force) {
  throw "OutputPath already exists. Use -Force to overwrite: $OutputPath"
}

$parent = Split-Path -Parent $OutputPath
if ($parent -and -not (Test-Path -LiteralPath $parent)) {
  New-Item -ItemType Directory -Path $parent -Force | Out-Null
}

$content = @"
# CI 红灯诊断报告

## 基本信息

- 仓库：$Repo
- CI 系统：$CiSystem
- Workflow：$Workflow
- Job：$Job
- Step：$Step

## 失败步骤

- 待补充

## 关键日志

```text
待补充
```

## 最可能根因

- 待补充

## 其他可能根因

- 待补充

## 修复建议

- 待补充

## 验证命令

```bash
# 待补充
```

## 风险等级

- [ ] 低
- [ ] 中
- [ ] 高

## 是否适合自动修复

- [ ] 是
- [ ] 否
- [ ] 需客户确认
"@

Set-Content -LiteralPath $OutputPath -Value $content -Encoding utf8
Write-Output "Created report skeleton: $OutputPath"
