# ============================================================
#  WordPress Git Setup Script
#  Project: web_ceo  |  Run this once in PowerShell
# ============================================================
#  HOW TO RUN:
#    1. Open PowerShell as Administrator (or normal user is fine)
#    2. Navigate here:  cd C:\xampp\htdocs\web_ceo
#    3. Run:           .\git-setup.ps1
# ============================================================

$projectPath = "C:\xampp\htdocs\web_ceo"
Set-Location $projectPath

Write-Host ""
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "  WordPress Git Setup for: web_ceo" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

# ---- Step 1: Clean up stale lock file ----
$lockFile = ".git\config.lock"
if (Test-Path $lockFile) {
    Write-Host "[1/5] Removing stale git lock file..." -ForegroundColor Yellow
    Remove-Item $lockFile -Force
    Write-Host "      Done." -ForegroundColor Green
} else {
    Write-Host "[1/5] No lock file found - skipping." -ForegroundColor Gray
}

# ---- Step 2: Initialize (or reinitialize) git ----
Write-Host "[2/5] Initializing Git repository..." -ForegroundColor Yellow
git init
git checkout -b main 2>$null
if ($LASTEXITCODE -ne 0) {
    git branch -M main 2>$null
}
Write-Host "      Done." -ForegroundColor Green

# ---- Step 3: Set local user config ----
Write-Host "[3/5] Configuring Git user..." -ForegroundColor Yellow
git config user.name  "Nirav Rathod"
git config user.email "nirav.rathod@aliansoftware.net"
Write-Host "      Name : Nirav Rathod" -ForegroundColor Gray
Write-Host "      Email: nirav.rathod@aliansoftware.net" -ForegroundColor Gray
Write-Host "      Done." -ForegroundColor Green

# ---- Step 4: Initial commit ----
Write-Host "[4/5] Staging files and making initial commit..." -ForegroundColor Yellow
git add .
git status --short
git commit -m "Initial commit: WordPress web_ceo project"
Write-Host "      Done." -ForegroundColor Green

# ---- Step 5: Show status ----
Write-Host ""
Write-Host "[5/5] Git setup complete!" -ForegroundColor Green
Write-Host ""
git log --oneline -5
Write-Host ""
Write-Host "============================================" -ForegroundColor Cyan
Write-Host "  NEXT: Connect to GitHub / GitLab" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "  1. Create a NEW repo on GitHub (no README, no .gitignore)" -ForegroundColor White
Write-Host "  2. Copy the repo URL, e.g.:" -ForegroundColor White
Write-Host "     https://github.com/YOUR-USERNAME/web_ceo.git" -ForegroundColor DarkGray
Write-Host ""
Write-Host "  3. Run these commands:" -ForegroundColor White
Write-Host "     git remote add origin https://github.com/YOUR-USERNAME/web_ceo.git" -ForegroundColor Yellow
Write-Host "     git push -u origin main" -ForegroundColor Yellow
Write-Host ""
Write-Host "  Done! Your WordPress project is now on GitHub." -ForegroundColor Green
Write-Host ""
