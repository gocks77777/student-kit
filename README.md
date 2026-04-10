# student-kit 🎓

> **"혼자 조용히 레벨업 하고 싶다면 써라."**
>
> 남들이 ChatGPT로 평균 답 받을 때, 너 혼자 진짜 답 받는 도구
> 한국 학생 개발자를 위한 Claude Code 슬래시 커맨드 모음 (CEO 모드 탑재)

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Made for Students](https://img.shields.io/badge/Made%20for-한국%20학생-red.svg)]()
[![Korean First](https://img.shields.io/badge/한글-우선-yellow.svg)]()
[![Claude Code](https://img.shields.io/badge/Claude%20Code-Slash%20Commands-purple.svg)](https://www.anthropic.com/claude-code)

---

## 🤔 이게 뭔데?

Claude Code 위에 얹는 **학생 전용 차별화 무기**.
취업 준비, 자소서, 공모전, 면접, 학생 고민까지 — 매주 반복되는 작업을
**날카로운 질문 + 자동화 워크플로우** 로 완전히 새로 정의함.

### 한 줄 요약
> 다른 AI 도구는 너의 질문에 답해줘서 **남들과 같은 답** 을 만들어.
> **student-kit은 너의 질문 자체를 거부해서 너만의 답** 을 끌어내.

### 누구한테 추천?
- ✅ 동기들과 격차 벌리고 싶은 학생
- ✅ "AI 잘 쓰는 사람" 이 되고 싶은 학생
- ✅ 평균 자소서, 평균 결과물 거부하는 학생
- ✅ 혼자 조용히 진화하고 싶은 학생

### 비추천
- ❌ "그냥 빨리 답 줘" 원하는 사람
- ❌ "괜찮은 정도" 면 만족하는 사람
- ❌ 자기 의심 직면하기 싫은 사람

---

## 🔥 다른 도구랑 뭐가 다른데?

### 일반 AI 도구로 자소서 쓰기
```
유저: "x 회사 자소서 써줘"
GPT: "네, 작성해드리겠습니다..." → 무난한 자소서 → 떨어짐
```

### student-kit으로 자소서 쓰기
```
유저: /자소서 x회사

student-kit:
잠깐. 답하기 전에 3가지.

1. 왜 x회사야? 한 줄로.
   (성장? 안정? 명성? 돈? 도피? — 진짜 이유)

2. x회사 안 가면 너 인생 망해?
   안 망하면 왜 이 자소서 쓰고 있어?

3. 너의 unfair advantage 1개.
   100명도 같은 자소서 낼 거야. 너만 가진 게 뭐야?
   (없으면 자소서 의미 없음. 잠깐 멈추고 그것부터 같이 찾자.)

→ 답해야 진짜 자소서 만들어줌
→ 무난한 거 원하면 ChatGPT 가서 써
```

**차이**: 시간을 줄여주는 게 아니라, **너 자신을 더 명확하게** 만들어줘.

---

## 🎯 슬래시 커맨드 9개

| 영문 | 한글 | 설명 | 빈도 |
|------|------|------|------|
| `/start` | **`/시작`** | 첫 셋업 (대화형 CLAUDE.md 생성) | 첫 사용 시 |
| `/morning` | `/오늘` | 데일리 브리핑 (마감 + 우선순위 + 첫 작업) | 매일 |
| `/jobs` | `/취업` | 잡 헌팅 통합 (Job Finder 연동 + 매칭) | 주 2~3회 |
| `/coverletter <회사>` | `/자소서 <회사>` | 자소서 자동 초안 (CEO 모드) | 주 1~2회 |
| `/contest-scan` | `/공모전` | 새 AI/SW 공모전 탐색 + 적합도 분석 | 주 1회 |
| `/paper <URL>` | `/논문 <URL>` | 논문 학생 친화 4페이지 요약 | 시험 시즌 |
| `/interview-prep <회사>` | `/면접 <회사>` | 면접 예상 질문 + 답변 가이드 | 면접 전 |
| `/weekly` | `/회고` | 주간 회고 + 다음 주 계획 | 주 1회 |
| `/gomin` | **`/고민`** | 학생 고민 구조적 사고 (★★★★★ 시그니처★★★★★) | 필요할 때 |

> 💡 **모든 명령어에 한글/영문 페어 제공** — `/오늘` 또는 `/morning` 둘 다 동작

### ⭐⭐⭐⭐⭐시그니처⭐⭐⭐⭐⭐: `/고민`

학생 고민을 6가지 카테고리로 진단하고, 검증된 사고 프레임워크 적용:

| 고민 유형 | 적용 프레임워크 |
|----------|---------------|
| A vs B 결정 (대학원 vs 취업) | Weighted Decision Matrix + Pre-mortem |
| 방향 모호 (뭘 하고 싶은지 모름) | 5 Whys + Inversion |
| 시간 배분 (대회 vs 학점 vs 취업) | Eisenhower Matrix + ROI |
| 두려움 기반 (면접 떨려서 못 지원) | Fear Setting (Tim Ferriss) |
| 비교 함정 (남들은 다 하는데...) | Personal Compass |
| 번아웃/회의 (왜 하는지 모름) | GROW + Energy Audit |

> "다른 명령어들은 시간을 절약해주지만, /고민은 인생을 절약해줘."

---

## ⚡ 빠른 설치 (3분)

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

# 슬래시 커맨드 복사 (사용자 레벨 - 모든 폴더에서 동작)
mkdir -p ~/.claude/commands
cp commands/*.md ~/.claude/commands/

# 또는 프로젝트 레벨 (해당 프로젝트에서만)
mkdir -p /your-project/.claude/commands
cp commands/*.md /your-project/.claude/commands/
```

자세한 설치 가이드: [INSTALL.md](INSTALL.md)

---

## 🚀 첫 사용법 (3분 안에 끝)

### 1. 작업 폴더 열고 첫 명령

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

### 4. 빠른 모드 (토큰 절약)

```
/오늘 빠르게
```

→ CEO 질문 1개로 압축, 결과 출력

---

## 🧠 CEO 모드란?

모든 슬래시 커맨드가 따르는 **4가지 핵심 원칙**:

### 1. 표면 거부 (Surface Rejection)
- ❌ "왜 지원해?" → "성장하고 싶어서요"
- ✅ "어떤 성장? 5년 후 너 어떻게 변하면 성공이야?"

### 2. 전제 도전 (Premise Challenge)
- ❌ "어떻게 합격할까?"
- ✅ "근데 합격해야 하는 거 맞아? 누가 그래?"

### 3. 10x 강요 (10x Forcing)
- ❌ "괜찮은 자소서 만들어줄게"
- ✅ "100명 중 1등 자소서 만들려면 너만의 어떤 무기가 필요해?"

### 4. 시간 압박 (Time Inversion)
- ❌ "천천히 생각해봐"
- ✅ "10년 후 너가 80살이 됐어. 이 결정 후회해 안 해?"

자세한 원칙: [docs/ceo_principles.md](docs/ceo_principles.md)

---

## 🇰🇷 한국어 우선 설계

영어 도구를 한국어로 번역한 게 아니라, **처음부터 한국 학생 문맥**으로 설계됨.

### 한국 학생만의 컨텍스트 반영
- ✅ contestkorea, 링커리어, 위비티 등 **한국 공모전 사이트 통합**
- ✅ 사람인, 잡코리아, 원티드 **한국 채용 사이트 우선**
- ✅ 학년/전공/학번 등 **한국 대학 시스템**
- ✅ 졸업/취업/군대 **한국 청년 압박 구조**
- ✅ 비전공자 표현 거부 등 **한국적 민감도**

### 한글 명령어 우선
```bash
/오늘    # /morning 보다 짧고 직관적
/자소서  # /coverletter 보다 12자 더 짧음
/고민    # /gomin 보다 의미 명확
/공모전  # /contest-scan 보다 한국적
```

---

## 🛡️ LLM 베스트 프랙티스

이 toolkit은 단순히 슬래시 커맨드 모음이 아니라, **LLM 도구 설계 베스트 프랙티스**를 담고 있음:

### ✅ 의미 기반 (Semantic) 패턴 매칭
하드코딩 키워드 매칭이 아닌, **의미 기반** 답변 분류:
```markdown
❌ Case B: ("성장" / "좋은 회사") 답변 → 재질문 (키워드 매칭)
✅ Category B: 답변이 추상적일 때
   의미 패턴: 구체적 사례 없음, 평가어만 있음
   (예시 — 참고용: "성장하고 싶어", "기회가 좋아서")
```

### 💰 토큰 절약 메커니즘 (7가지)
1. **캐싱 우선** — 이미 읽은 파일 재읽기 X
2. **Grep > Read** — 특정 정보만 추출
3. **응답 압축** — 표 > 산문, 1줄 > 단락
4. **적응형 깊이** — 첫 답변 명확하면 재질문 X
5. **빠른 모드** — `빠르게`/`fast` 키워드 지원
6. **컨텍스트 인식** — 5분 내 같은 명령 시 스킵
7. **병렬 실행** — 여러 검색 동시에

### 🆓 자유 작성 옵션
모든 선택지에 "본인 답변 자유 작성" 옵션 제공 (CLI 친화).

---

## 🛠️ 커스터마이징

각 슬래시 커맨드는 마크다운 파일이라 **자유롭게 수정 가능**:

```bash
# 자소서 커맨드 수정
code ~/.claude/commands/coverletter.md

# 새 커맨드 만들기
echo "..." > ~/.claude/commands/myproject.md
```

자세한 가이드: [CONTRIBUTING.md](CONTRIBUTING.md)

---

## 📊 누가 쓰면 좋아?

- ✅ **취업 준비 중인 컴소/SW 학생** (자소서, 면접, 잡 헌팅)
- ✅ **공모전/대회 노리는 대학생** (적합도 분석, 준비 체크)
- ✅ **시험 기간 논문 읽어야 하는 학생** (학생 친화 요약)
- ✅ **진로 결정 못 한 학생** (`/고민` 시그니처)
- ✅ **AI 도구 잘 쓰고 싶은 주니어 개발자** (CEO 모드 학습)
- ✅ **하네스 엔지니어링 배우고 싶은 사람** (실전 사례)

---

## 🤝 기여하기

새 슬래시 커맨드 아이디어, 버그 리포트, 개선 PR 환영!

- **이슈 만들기**: 어떤 학생 작업을 자동화하면 좋을지
- **PR 보내기**: 자기만의 슬래시 커맨드 추가
- **번역 추가**: 영문/한글 별칭

[CONTRIBUTING.md](CONTRIBUTING.md) 참고.

---

## 🌟 영감 + 참고

이 toolkit은 다음 도구/철학에서 영감을 받았음:

- **[gstack by Garry Tan](https://github.com/garrytan/gstack)** — CEO 모드 컨셉 (`/plan-ceo-review`)
- **[LangChain DeepAgents](https://github.com/langchain-ai/deepagents)** — 하네스 엔지니어링 패턴
- **[LangChain 블로그](https://blog.langchain.com/)** — 미들웨어 + Eval 패턴
- **[Anthropic Claude Code](https://www.anthropic.com/claude-code)** — 베이스 하네스
- **YC 오피스아워** — 6가지 forcing question
- **Tim Ferriss** — Fear Setting
- **Charlie Munger** — Inversion
- **Paul Graham** — "Make something people want"

---

## 🎓 만든 이

**정해찬 (gocks77777)** —
FDE / AI Engineer 를 향해 달려가는 중
- GitHub: [@gocks77777](https://github.com/gocks77777)

### 이 toolkit이 만들어진 이유

```
"혼자 조용히 레벨업 하고 싶다면 써라."
```

이 한 문장이 student-kit의 정체성이야.

학생 개발자로서 매주 반복되는 작업 (자소서, 면접 준비, 공모전 탐색, 진로 고민) 을
일반 AI 도구로 처리하다가 깨달은 게 있음:

> **남들과 똑같은 도구를 쓰면, 남들과 똑같은 결과가 나온다.**

ChatGPT 쓰는 학생은 한국에 100만 명. 다 같은 프롬프트, 다 같은 답변, 다 같은 자소서.
그래서 떨어져. 면접관이 100개 중 99개와 똑같다고 느끼니까.

진짜 통과하는 자소서는 **너만의 unfair advantage** 가 박혀 있어야 함.
그건 AI가 모르고, **너 자신만 알아.**

근데 너 자신도 모를 때가 많음. 그래서 AI가 **진짜 질문을 던져서 끌어내야** 함.

이게 student-kit의 정체성이야:
- 자동화 도구가 아니라 **사고 강제 도구**
- 답을 주는 도구가 아니라 **답을 끌어내는 도구**
- 평균을 만드는 도구가 아니라 **차별화를 만드는 도구**

> **남들이 ChatGPT 쓸 때, 너는 너만의 무기 써라.**

---

## 💡 한 가지 더

이 toolkit은 단순히 시간을 절약해주는 도구가 아니야.
**매번 작업할 때마다 너를 1cm씩 더 명확하게 만들어주는 도구** 야.

5년 후, 이 toolkit으로 자란 너 자신을 돌아봤을 때
"코딩 시간 5분 절약" 보다는
"결정 100개를 더 명확하게 내림" 이라고 말할 수 있길.

그게 student-kit의 진짜 가치야.

---

## 📄 라이선스

MIT — 자유롭게 사용/수정/배포.

---

## 🚀 지금 시작하기

```bash
# 1분 설치 (Windows)
iwr https://raw.githubusercontent.com/gocks77777/student-kit/main/scripts/install.ps1 -useb | iex

# 1분 설치 (Mac/Linux)
curl -sSL https://raw.githubusercontent.com/gocks77777/student-kit/main/scripts/install.sh | bash

# 첫 명령
/시작
```

5분 후, 너의 Claude Code는 너 전용 무기가 되어 있을 거야.
그리고 주변 사람들과 너 사이에 1cm 격차가 생기기 시작할 거야.
6개월 후엔 그 격차가 보일 거야.

> **남들이 ChatGPT 쓸 때, 너는 너만의 무기 써라.**

---

⭐ **이 repo가 도움됐다면 Star 눌러줘.** 너랑 같은 학생들이 발견할 수 있게.😉
