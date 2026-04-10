# student-kit 🎓

> **자동화 도구가 아니라, 너를 변화시키는 도구.**
> 한국 대학생/주니어 개발자를 위한 Claude Code 슬래시 커맨드 모음 (CEO 모드 탑재)

---

## 🤔 이게 뭔데?

Claude Code 위에 얹는 **개인 생산성 하네스(harness)**.
취업 준비, 자소서, 공모전, 면접, 학생 고민까지 — 매주 반복되는 작업을
**날카로운 질문 + 자동화 워크플로우** 로 완전히 새로 정의함.

### 다른 도구랑 뭐가 다른데?

```
일반 도구:  /coverletter 마키나락스
            → "네, 자소서 만들어드릴게요" → 무난한 결과물

student-kit: /coverletter 마키나락스
            → 잠깐. 답하기 전에 3가지.
              1. 왜 마키나락스야? 한 단어로.
              2. 안 가도 너 인생 망해? 그럼 왜 쓰고 있어?
              3. 100명도 같은 자소서 낼 거야. 너의 unfair advantage 1개는?
            → 답해야 진짜 자소서 만들어줌
```

**CEO 모드**: 모든 슬래시 커맨드는 실행 전에 **사용자의 전제를 도전**해.
무난한 답변이 아니라 **진짜 너만의 답** 을 끌어내기 위해.

> "다른 명령어들은 시간을 절약해주지만, /고민은 인생을 절약해줘."

---

## 🎯 슬래시 커맨드 목록

| 영문 | 한글 | 설명 | 빈도 |
|------|------|------|------|
| `/start` | **`/시작`** | 처음 셋업 (대화형 CLAUDE.md 생성) | 첫 사용 시 |
| `/morning` | `/오늘` | 데일리 브리핑 (마감 + 우선순위 + 첫 작업) | 매일 |
| `/jobs` | `/취업` | 잡 헌팅 통합 (Job Finder 연동 + 매칭) | 주 2~3회 |
| `/coverletter <회사>` | `/자소서 <회사>` | 자소서 자동 초안 (CEO 모드) | 주 1~2회 |
| `/contest-scan` | `/공모전` | 새 AI/SW 공모전 탐색 + 적합도 분석 | 주 1회 |
| `/paper <URL>` | `/논문 <URL>` | 논문 학생 친화 4페이지 요약 | 시험 시즌 |
| `/interview-prep <회사>` | `/면접 <회사>` | 면접 예상 질문 + 답변 가이드 | 면접 전 |
| `/weekly` | `/회고` | 주간 회고 + 다음 주 계획 | 주 1회 |
| `/gomin` | **`/고민`** | 학생 고민 구조적 사고 (★ 시그니처) | 필요할 때 |

### 🔥 시그니처: `/고민`

학생 고민을 6가지 카테고리로 진단하고, 검증된 사고 프레임워크 적용:

| 고민 유형 | 적용 프레임워크 |
|----------|---------------|
| A vs B 결정 | Weighted Decision Matrix + Pre-mortem |
| 방향 모호 | 5 Whys + Inversion |
| 시간 배분 | Eisenhower Matrix + ROI |
| 두려움 기반 | Fear Setting (Tim Ferriss) |
| 비교 함정 | Personal Compass |
| 번아웃/회의 | GROW + Energy Audit |

---

## ⚡ 빠른 설치

### Windows (PowerShell)
```powershell
iwr https://raw.githubusercontent.com/gocks77777/student-kit/main/scripts/install.ps1 -useb | iex
```

### Mac/Linux (Bash)
```bash
curl -sSL https://raw.githubusercontent.com/gocks77777/student-kit/main/scripts/install.sh | bash
```

### 수동 설치
```bash
git clone https://github.com/gocks77777/student-kit.git
cd student-kit

# 슬래시 커맨드 복사
cp commands/* ~/.claude/commands/

# CLAUDE.md 템플릿 복사 (자기 정보 채울 거)
cp templates/CLAUDE.md.template ~/your-project/CLAUDE.md
```

자세한 설치 가이드: [INSTALL.md](INSTALL.md)

---

## 🚀 첫 사용법 (3분)

### 1. 설치 후 작업 폴더에서 첫 명령 실행

```
/시작
```

→ 대화형으로 8가지 질문 (이름, 진로, 마감 등)
→ 답변 받아서 CLAUDE.md 자동 생성
→ ⚠️ "취업하고 싶어" 같은 추상적 답변은 거부됨 (CEO 모드)

### 2. 데일리 명령

```
/오늘
```

→ 마감 + 우선순위 + "오늘 1가지만 한다면?" 질문

### 3. 진짜 고민이 있을 때

```
/고민 대학원 갈지 취업할지 모르겠어
```

→ 표면 답변 거부
→ 6가지 사고 프레임워크 자동 적용
→ 24시간 안에 할 액션 1개 추천

---

## 🧠 CEO 모드란?

모든 슬래시 커맨드가 따르는 **4가지 핵심 원칙**:

### 1. 표면 거부 (Surface Rejection)
- ❌ "왜 지원해?" → "성장하고 싶어서요"
- ✅ "성장? 어떤 성장? 5년 후 너 어떻게 변하면 성공이야?"

### 2. 전제 도전 (Premise Challenge)
- ❌ "어떻게 합격할까?"
- ✅ "근데 합격해야 하는 거 맞아? 누가 그래?"

### 3. 10x 강요 (10x Forcing)
- ❌ "괜찮은 자소서 만들어줄게"
- ✅ "100명 중 1등 자소서 만들려면 너만의 어떤 무기가 필요해?"

### 4. 시간 압박 (Time Inversion)
- ❌ "천천히 생각해봐"
- ✅ "10년 후 너가 80살이 됐어. 이 결정 후회해 안 해?"

자세한 원칙: [commands/_ceo_principles.md](commands/_ceo_principles.md)

---

## 🛠️ 커스터마이징

각 슬래시 커맨드는 `~/.claude/commands/` 에 마크다운 파일로 저장돼.
**자유롭게 수정해서 본인 입맛대로 바꾸면 됨.**

```bash
# 자소서 커맨드 수정
code ~/.claude/commands/coverletter.md

# 새 커맨드 만들기
echo "..." > ~/.claude/commands/myproject.md
```

---

## 🤝 기여하기

새 슬래시 커맨드 아이디어, 버그 리포트, 개선 PR 환영!

- 이슈 만들기: 어떤 학생 작업을 자동화하면 좋을지
- PR 보내기: 자기만의 슬래시 커맨드 추가
- 한글 번역 추가: 영문 커맨드의 한글 별칭

---

## 📊 영감

- [LangChain DeepAgents](https://github.com/langchain-ai/deepagents) — 하네스 엔지니어링 패턴
- [gstack by Garry Tan](https://github.com/garrytan/gstack) — CEO 모드 컨셉
- [Anthropic Claude Code](https://www.anthropic.com/claude-code) — 베이스 하네스
- LangChain 블로그 — 미들웨어 + Eval 패턴

---

## 🎓 만든 이

**정해찬 (gocks77777)** — 고려대 세종 컴퓨터학과 4학년
FDE / AI Engineer 지망

- GitHub: [@gocks77777](https://github.com/gocks77777)

---

## 📄 라이선스

MIT — 자유롭게 사용/수정/배포.

---

## 💡 한 가지 더

이 toolkit은 단순히 시간을 절약해주는 도구가 아니야.
**매번 작업할 때마다 너를 1cm씩 더 명확하게 만들어주는 도구** 야.

5년 후, 이 toolkit으로 자란 너 자신을 돌아봤을 때
"코딩 시간 5분 절약" 보다는
"결정 100개를 더 명확하게 내림" 이라고 말할 수 있길.

그게 student-kit의 진짜 가치야.
