# Heartopia攻略站 - 自动同步脚本
# 每次修改代码后运行此脚本即可自动同步到GitHub

Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "  Heartopia攻略站 - 自动同步工具" -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host ""

# 获取当前时间
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

Write-Host "[$timestamp] 开始同步..." -ForegroundColor Yellow

# 添加所有更改
Write-Host "1. 添加更改文件..." -ForegroundColor Green
git add .

# 提交更改
Write-Host "2. 提交更改..." -ForegroundColor Green
git commit -m "自动更新 - $timestamp"

# 推送到GitHub
Write-Host "3. 推送到GitHub..." -ForegroundColor Green
git push origin main

Write-Host ""
Write-Host "✅ 同步完成！" -ForegroundColor Green
Write-Host "🌐 访问网站: https://cant-1228.github.io/CAIT/" -ForegroundColor Cyan
Write-Host ""
Write-Host "按任意键退出..." -ForegroundColor Gray
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
