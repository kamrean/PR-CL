# 标准交付包规范

## 适用服务

1. 仓库体检
2. CI 红灯诊断
3. PR 初审
4. GitHub Actions 落地

## 推荐结构

```text
delivery-pack/
  00-summary.md
  01-detailed-report.md
  02-next-steps.md
  03-risk-and-confirmation.md
```

## 文件作用

### 00-summary.md

- 一句话结论
- 最重要的 3 个问题
- 建议优先做的 3 个动作

### 01-detailed-report.md

- 详细证据
- 详细判断
- 详细建议

### 02-next-steps.md

- 今天先做什么
- 本周再做什么
- 是否建议升级服务

### 03-risk-and-confirmation.md

- 高风险项
- 需要客户拍板的事项
- 边界确认

## 命名建议

不要用真实客户名作为公开资产命名。

建议：

```text
project-alias_service-type_YYYY-MM-DD
```
