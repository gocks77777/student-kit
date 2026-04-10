# student-kit installer for Windows
# Usage: iwr https://raw.githubusercontent.com/gocks77777/student-kit/main/scripts/install.ps1 -useb | iex

$ErrorActionPreference = "Stop"

Write-Host ""
Write-Host "🎓 student-kit installer" -ForegroundColor Cyan
Write-Host "=========================" -ForegroundColor Cyan
Write-Host ""

# 1. Claude commands 폴더 확인/생성
$commandsDir = "$env:USERPROFILE\.claude\commands"
if (-not (Test-Path $commandsDir)) {
    New-Item -ItemType Directory -Path $commandsDir -Force | Out-Null
    Write-Host "✓ Created $commandsDir" -ForegroundColor Green
} else {
    Write-Host "✓ Found existing commands directory" -ForegroundColor Green
}

# 2. 임시 폴더에 clone
$tempDir = "$env:TEMP\student-kit-install"
if (Test-Path $tempDir) {
    Remove-Item -Recurse -Force $tempDir
}

Write-Host ""
Write-Host "📦 Downloading student-kit..." -ForegroundColor Yellow

try {
    git clone --depth 1 https://github.com/gocks77777/student-kit.git $tempDir 2>&1 | Out-Null
    Write-Host "✓ Downloaded" -ForegroundColor Green
} catch {
    Write-Host "❌ Git clone failed. Make sure git is installed." -ForegroundColor Red
    Write-Host "   Install git: https://git-scm.com/download/win" -ForegroundColor Red
    exit 1
}

# 3. 슬래시 커맨드 복사
Write-Host ""
Write-Host "📋 Installing slash commands..." -ForegroundColor Yellow

$commandFiles = Get-ChildItem "$tempDir\commands\*.md"
foreach ($file in $commandFiles) {
    Copy-Item $file.FullName -Destination $commandsDir -Force
}

Write-Host "✓ Installed $($commandFiles.Count) slash commands" -ForegroundColor Green

# 4. 템플릿 안내
Write-Host ""
Write-Host "🎉 Installation complete!" -ForegroundColor Green
Write-Host ""
Write-Host "================================" -ForegroundColor Cyan
Write-Host "다음 단계 (Next steps):" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. 작업 폴더로 이동:" -ForegroundColor White
Write-Host "   cd \path\to\your\workspace" -ForegroundColor Gray
Write-Host ""
Write-Host "2. CLAUDE.md 템플릿 복사:" -ForegroundColor White
Write-Host "   Copy-Item $tempDir\templates\CLAUDE.md.template .\CLAUDE.md" -ForegroundColor Gray
Write-Host ""
Write-Host "3. CLAUDE.md 열어서 본인 정보 입력 (이름, 학교, 진로 등)" -ForegroundColor White
Write-Host ""
Write-Host "4. Claude Code 열고 첫 명령어 시도:" -ForegroundColor White
Write-Host "   /오늘" -ForegroundColor Gray
Write-Host ""
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""

# 사용 가능한 슬래시 커맨드 목록
Write-Host "📝 사용 가능한 슬래시 커맨드:" -ForegroundColor Yellow
Write-Host "  /morning  /오늘     - 데일리 브리핑"
Write-Host "  /jobs     /취업     - 잡 헌팅"
Write-Host "  /coverletter /자소서 - 자소서 자동 초안"
Write-Host "  /contest-scan /공모전 - 공모전 탐색"
Write-Host "  /paper    /논문     - 논문 요약"
Write-Host "  /interview-prep /면접 - 면접 대비"
Write-Host "  /weekly   /회고     - 주간 회고"
Write-Host "  /gomin    /고민     - 학생 고민 (★ 시그니처)"
Write-Host ""

# 정리할지 묻기
Write-Host "Cleanup temp files? (y/n) " -NoNewline -ForegroundColor Yellow
$cleanup = Read-Host
if ($cleanup -eq "y") {
    Remove-Item -Recurse -Force $tempDir
    Write-Host "✓ Cleaned up" -ForegroundColor Green
} else {
    Write-Host "ℹ️  Temp files kept at: $tempDir" -ForegroundColor Cyan
}

Write-Host ""
Write-Host "Made with ❤️  by @gocks77777" -ForegroundColor Magenta
Write-Host "https://github.com/gocks77777/student-kit" -ForegroundColor Cyan
Write-Host ""
