# Antigravity SEO Plugin Installer for Windows
$ErrorActionPreference = "Stop"
$TargetDir = Join-Path $env:USERPROFILE ".gemini\config\plugins\antigravity-seo"

Write-Host "Installing antigravity-seo to $TargetDir ..." -ForegroundColor Cyan
New-Item -ItemType Directory -Force -Path $TargetDir | Out-Null

$Items = @("plugin.json", "README.md", "LICENSE", "pyproject.toml", "requirements.txt", "agents", "assets", "data", "rules", "schema", "scripts", "skills")
foreach ($Item in $Items) {
    $Src = Join-Path $PSScriptRoot $Item
    if (Test-Path $Src) {
        Copy-Item -Path $Src -Destination $TargetDir -Recurse -Force
    }
}

Write-Host "Done! Open Antigravity Customizations -> Plugins to verify 'Antigravity SEO' is enabled." -ForegroundColor Green
