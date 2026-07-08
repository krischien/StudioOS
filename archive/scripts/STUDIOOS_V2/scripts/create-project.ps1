# run .\scripts\create-project.ps1 "lutopia" to create a new project called "lutopia"
param(
    [Parameter(Mandatory=$true)]
    [string]$ProjectName
)

$root = Join-Path "..\projects" $ProjectName

Write-Host ""
Write-Host "Creating StudioOS project: $ProjectName"
Write-Host ""

New-Item -ItemType Directory -Force -Path $root | Out-Null

# Root markdown files
$files = @(
    "README.md",
    "PROJECT_STATUS.md",
    "ROADMAP.md",
    "TODO.md",
    "CHANGELOG.md",
    "PROJECT_HISTORY.md"
)

foreach ($file in $files) {
    New-Item -ItemType File -Force -Path (Join-Path $root $file) | Out-Null
}

# Main folders
$folders = @(
    "analytics",
    "assets",
    "balancing",
    "content",
    "decisions",
    "design",
    "docs",
    "moderation",
    "papers",
    "prompts",
    "releases",
    "research",
    "scripts",
    "testing"
)

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Force -Path (Join-Path $root $folder) | Out-Null
}

# Architecture subfolders
$architecture = @(
    "ai",
    "api",
    "database",
    "multiplayer"
)

foreach ($folder in $architecture) {
    New-Item -ItemType Directory -Force `
        -Path (Join-Path $root "architecture\$folder") | Out-Null
}

Write-Host ""
Write-Host "Project created successfully!"
Write-Host ""
Write-Host "Location:"
Write-Host $root