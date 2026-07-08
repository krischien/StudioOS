param(
    [Parameter(Mandatory=$true)]
    [string]$ProjectName
)

$ProjectRoot = Join-Path (Get-Location) $ProjectName

if (Test-Path $ProjectRoot) {
    Write-Host "Project already exists: $ProjectRoot"
    exit 1
}

$folders = @(
    "docs",
    "docs/decisions",
    "docs/research",
    "docs/architecture",
    "docs/requirements",
    "src",
    "assets",
    "tests",
    "deployment"
)

New-Item -ItemType Directory -Path $ProjectRoot | Out-Null

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Path (Join-Path $ProjectRoot $folder) | Out-Null
}

@"
# $ProjectName

Created using StudioOS v0.5 Project Standard.

## Overview

## Features

## Architecture

## Development
"@ | Out-File "$ProjectRoot/README.md" -Encoding utf8

@"
# Changelog

## v0.1.0

### Added
- Initial project creation using StudioOS standard
"@ | Out-File "$ProjectRoot/CHANGELOG.md" -Encoding utf8

@"
# Decision Records

Store important architectural and implementation decisions here.
"@ | Out-File "$ProjectRoot/docs/decisions/README.md" -Encoding utf8

@"
# Research

Store research notes, references, and findings here.
"@ | Out-File "$ProjectRoot/docs/research/README.md" -Encoding utf8

@"
# AI Agent Context

This project follows StudioOS v0.5.

Agents should review:
- README.md
- CHANGELOG.md
- docs/decisions
- docs/research
"@ | Out-File "$ProjectRoot/AI_CONTEXT.md" -Encoding utf8

Write-Host "StudioOS project created successfully:"
Write-Host $ProjectRoot