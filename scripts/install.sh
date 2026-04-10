#!/usr/bin/env bash
# student-kit installer for Mac/Linux
# Usage: curl -sSL https://raw.githubusercontent.com/gocks77777/student-kit/main/scripts/install.sh | bash

set -e

# Colors
CYAN='\033[0;36m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
RED='\033[0;31m'
MAGENTA='\033[0;35m'
NC='\033[0m' # No Color

echo ""
echo -e "${CYAN}🎓 student-kit installer${NC}"
echo -e "${CYAN}=========================${NC}"
echo ""

# 1. Claude commands 폴더 확인/생성
COMMANDS_DIR="$HOME/.claude/commands"

if [ ! -d "$COMMANDS_DIR" ]; then
    mkdir -p "$COMMANDS_DIR"
    echo -e "${GREEN}✓ Created $COMMANDS_DIR${NC}"
else
    echo -e "${GREEN}✓ Found existing commands directory${NC}"
fi

# 2. 임시 폴더에 clone
TEMP_DIR="/tmp/student-kit-install"

if [ -d "$TEMP_DIR" ]; then
    rm -rf "$TEMP_DIR"
fi

echo ""
echo -e "${YELLOW}📦 Downloading student-kit...${NC}"

if ! command -v git &> /dev/null; then
    echo -e "${RED}❌ Git is not installed.${NC}"
    echo -e "${RED}   Install: https://git-scm.com/downloads${NC}"
    exit 1
fi

git clone --depth 1 https://github.com/gocks77777/student-kit.git "$TEMP_DIR" 2>&1 | grep -v "^$" || true
echo -e "${GREEN}✓ Downloaded${NC}"

# 3. 슬래시 커맨드 복사
echo ""
echo -e "${YELLOW}📋 Installing slash commands...${NC}"

cp "$TEMP_DIR"/commands/*.md "$COMMANDS_DIR/"
COUNT=$(ls -1 "$TEMP_DIR"/commands/*.md | wc -l | tr -d ' ')

echo -e "${GREEN}✓ Installed $COUNT slash commands${NC}"

# 4. 안내
echo ""
echo -e "${GREEN}🎉 Installation complete!${NC}"
echo ""
echo -e "${CYAN}================================${NC}"
echo -e "${CYAN}다음 단계 (3분이면 끝):${NC}"
echo -e "${CYAN}================================${NC}"
echo ""
echo "1. 작업 폴더로 이동:"
echo "   cd /path/to/your/workspace"
echo ""
echo "2. Claude Code 열고 다음 명령 실행:"
echo -e "   ${GREEN}/시작${NC}"
echo ""
echo "   대화형 셋업이 시작됨:"
echo "   - 8가지 질문 (이름, 진로, 마감 등)"
echo "   - CLAUDE.md 자동 생성"
echo "   - CEO 모드 적용 (추상적 답변 거부)"
echo ""
echo "3. 셋업 완료 후 첫 명령어:"
echo "   /오늘"
echo ""
echo -e "${CYAN}================================${NC}"
echo ""

# 사용 가능한 슬래시 커맨드 목록
echo -e "${YELLOW}📝 사용 가능한 슬래시 커맨드:${NC}"
echo "  /start    /시작     - 첫 셋업 (대화형 CLAUDE.md 생성) ⭐"
echo "  /morning  /오늘     - 데일리 브리핑"
echo "  /jobs     /취업     - 잡 헌팅"
echo "  /coverletter /자소서 - 자소서 자동 초안"
echo "  /contest-scan /공모전 - 공모전 탐색"
echo "  /paper    /논문     - 논문 요약"
echo "  /interview-prep /면접 - 면접 대비"
echo "  /weekly   /회고     - 주간 회고"
echo "  /gomin    /고민     - 학생 고민 (★ 시그니처)"
echo ""

# 정리할지 묻기
read -p "Cleanup temp files? (y/n) " cleanup
if [ "$cleanup" = "y" ]; then
    rm -rf "$TEMP_DIR"
    echo -e "${GREEN}✓ Cleaned up${NC}"
else
    echo -e "${CYAN}ℹ️  Temp files kept at: $TEMP_DIR${NC}"
fi

echo ""
echo -e "${MAGENTA}Made with ❤️  by @gocks77777${NC}"
echo -e "${CYAN}https://github.com/gocks77777/student-kit${NC}"
echo ""
