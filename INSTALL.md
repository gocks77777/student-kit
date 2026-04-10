# 설치 가이드

student-kit 설치는 3분이면 끝납니다.

---

## 사전 요구사항

- [Claude Code](https://www.anthropic.com/claude-code) 설치 완료
- Git 설치 (수동 설치 시)

---

## 방법 1: 자동 설치 (추천)

### Windows (PowerShell)

PowerShell을 **관리자 권한 없이** 열고:

```powershell
iwr https://raw.githubusercontent.com/gocks77777/student-kit/main/scripts/install.ps1 -useb | iex
```

### Mac / Linux

```bash
curl -sSL https://raw.githubusercontent.com/gocks77777/student-kit/main/scripts/install.sh | bash
```

자동 설치는 다음을 수행합니다:
1. `~/.claude/commands/` 폴더 생성
2. 모든 슬래시 커맨드 복사
3. CLAUDE.md 템플릿을 현재 폴더로 복사
4. 설치 완료 안내

---

## 방법 2: 수동 설치

### Step 1: 저장소 클론

```bash
git clone https://github.com/gocks77777/student-kit.git
cd student-kit
```

### Step 2: 슬래시 커맨드 복사

#### Windows (PowerShell)
```powershell
# Claude commands 폴더가 없으면 생성
New-Item -ItemType Directory -Path "$env:USERPROFILE\.claude\commands" -Force

# 슬래시 커맨드 복사
Copy-Item "commands\*" -Destination "$env:USERPROFILE\.claude\commands\" -Force
```

#### Mac / Linux
```bash
mkdir -p ~/.claude/commands
cp commands/* ~/.claude/commands/
```

### Step 3: CLAUDE.md 템플릿 복사

작업 폴더로 이동:
```bash
cd /path/to/your/work-folder
```

템플릿 복사:
```bash
# Windows
Copy-Item "path\to\student-kit\templates\CLAUDE.md.template" .\CLAUDE.md

# Mac/Linux
cp /path/to/student-kit/templates/CLAUDE.md.template ./CLAUDE.md
```

### Step 4: 본인 정보 입력

`CLAUDE.md` 를 텍스트 에디터로 열고 `{{ }}` 부분을 본인 정보로 채워넣으세요:

```markdown
- 이름: 홍길동
- 소속: 고려대 세종 컴퓨터학과 4학년
- 진로/목표: FDE / AI Engineer
- ...
```

---

## 설치 확인

Claude Code 켜고 다음 명령어 실행:

```
/오늘
```

CEO 모드 질문이 나오면 성공:
```
오늘 작업 정리하기 전에 하나만 물어볼게.
> "오늘 만약 1가지만 한다면 뭐를 해야 가장 의미 있어?"
```

---

## 업데이트

```bash
cd /path/to/student-kit
git pull
cp commands/* ~/.claude/commands/
```

또는 자동 설치 스크립트를 다시 실행하면 됩니다.

---

## 제거

```bash
# Windows
Remove-Item "$env:USERPROFILE\.claude\commands\*.md" -Confirm

# Mac/Linux
rm ~/.claude/commands/*.md
```

본인 작업 폴더의 CLAUDE.md는 별도로 삭제하세요.

---

## 트러블슈팅

### Q. 슬래시 커맨드가 안 보여요
- Claude Code를 재시작해보세요
- `~/.claude/commands/` 폴더에 .md 파일들이 있는지 확인
- 권한 문제일 수 있음 (Mac/Linux의 경우 `chmod 644 ~/.claude/commands/*.md`)

### Q. 한글 슬래시 커맨드가 동작하지 않아요
- 일부 환경에서 한글 파일명 이슈가 있을 수 있음
- 그 경우 영문 버전(`/gomin`, `/morning`) 사용

### Q. CLAUDE.md를 인식 못 해요
- Claude Code가 현재 디렉토리의 CLAUDE.md를 자동 로드합니다
- 작업 폴더에서 Claude Code를 실행했는지 확인

### Q. CEO 모드 질문이 너무 많아요
- 그게 핵심 기능입니다. 표면 답변 거부가 student-kit의 정체성
- 정말 필요하면 각 commands/*.md 파일을 직접 수정 가능

---

## 다음 단계

설치가 끝났다면:
1. 첫 명령어 시도: `/오늘`
2. 자소서 시도: `/자소서 [회사명]`
3. 시그니처 명령어: `/고민 [너의 진짜 고민]`

질문이나 문제가 있으면 [GitHub Issues](https://github.com/gocks77777/student-kit/issues) 에서 제보해주세요.
