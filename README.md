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

### 일반 AI 도구로 취업 준비하기
```
유저: "x 회사 자소서 써줘"
GPT: "네, 작성해드리겠습니다..." → 무난한 자소서 → 떨어짐

[그리고 따로]
유저: "x회사 면접 질문 예상해줘"
GPT: "...일반적인 면접 질문..." → 자소서랑 무관한 답변
```

### student-kit으로 취업 준비하기 (1개 명령어)
```
유저: /취업 풀준비 x회사

student-kit:
잠깐. 풀준비는 진짜 비싼 작업이야. 5가지 답해.

1. 왜 x회사야? 한 줄.
2. 안 가도 인생 망해? 그럼 왜 풀준비해?
3. 너의 unfair advantage 1개.
4. 면접 떨어지면 어떻게 돼?
5. 1년 후 너가 이 회사 다니고 있다면, 어떻게 살고 있어?

→ 5개 다 답해야 진행. 1개라도 모호하면 거부.

[답변 후 자동 실행]
1. 회사 풀 분석 (병렬 검색)
2. 자소서 작성 (Bar-Raiser 자체 검증)
3. 면접 대비 (Bar-Raiser 자체 검증)
4. 통합 패키지 출력
5. 메타 검증 (자소서 ↔ 면접 일관성)

→ 30분 워크플로우가 1개 명령어로 끝
```

**차이**:
- 시간을 줄여주는 게 아니라, **너 자신을 더 명확하게** 만들어줘.
- 단발성 명령어가 아니라 **pipeline** 으로 동작.
- 한 번에 한 작업이 아니라 **gstack 식 풀 워크플로우**.

---

## 🎯 슬래시 커맨드 6개

> v2 철학: **gstack의 PHILOSOPHY는 가져오되, INTERFACE는 압축한다.**
> 35개 명령어 외울 필요 없음. 6개만.

| 영문 | 한글 | 설명 | Sub-Actions |
|------|------|------|-------------|
| `/start` | **`/시작`** | 첫 셋업 (5개 질문 + 자동 감지) | - |
| `/today` | `/오늘` | 데일리 + 회고 + 진척 통합 | `회고`, `진척` |
| `/career` | `/취업` | 잡 + 자소서 + 면접 + **풀준비** | `자소서`, `면접`, `풀준비`, `진척` |
| `/contest` | `/공모전` | 탐색 + 신청 + 추적 | `신청`, `추적` |
| `/paper <URL>` | `/논문 <URL>` | 논문 학생 친화 요약 | - |
| `/gomin` | **`/고민`** | 학생 고민 (★★★★★ 시그니처 ★★★★★) | - |

> 💡 **모든 명령어에 한글/영문 페어 제공** — `/오늘` 또는 `/today` 둘 다 동작
> 💡 **모든 명령어에 빠른 모드** — `빠르게` 또는 `fast` 키워드로 CEO 압축

### ⭐ 시그니처 1: `/취업 풀준비 [회사]`

**Pipeline 명령어** — 1번 호출로 4단계 자동 실행:
1. 회사 풀 분석 (병렬 검색)
2. 자소서 작성 (Bar-Raiser)
3. 면접 대비 (Bar-Raiser)
4. 메타 검증 (일관성 체크)

→ 30분 → 5분.

### ⭐⭐⭐⭐⭐ 시그니처 2: `/고민` ⭐⭐⭐⭐⭐

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

→ 대화형으로 5가지 질문 (이름, 진로, 마감 등) + 자동 감지
→ 답변 받아서 CLAUDE.md 자동 생성
→ ⚠️ "취업하고 싶어" 같은 추상적 답변은 거부됨 (CEO 모드)

### 2. 데일리 명령

```
/오늘
```

→ 마감 + 우선순위 + "오늘 1가지만 한다면?" 질문

### 3. 풀 취업 준비 (시그니처)

```
/취업 풀준비 [회사명]
```

→ 회사분석 → 자소서 → 면접 → 검증 → 패키지 (1번 명령으로 끝)

### 4. 진짜 고민이 있을 때

```
/고민 대학원 갈지 취업할지 모르겠어
```

→ 표면 답변 거부
→ 6가지 사고 프레임워크 자동 적용
→ 24시간 안에 할 액션 1개 추천

### 5. 빠른 모드 (토큰 절약)

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

## 🛡️ Bar-Raiser (자체 검증 메커니즘)

student-kit v2부터 모든 출력은 자동 자체 검증을 거침. **평균 결과물을 거부**.

### Bar-Raiser 4가지 검증 질문
1. **진정성**: 사용자의 진짜 동기/고민이 반영됐는가?
2. **구체성**: 추상적이거나 일반론 들어갔는가?
3. **비전 정렬**: 사용자의 진로 목표와 정렬되는가?
4. **금지 사항**: "긍정적으로 생각해" 같은 회피성 멘트 있나?

→ 4개 다 통과 → 출력
→ 1개라도 미통과 → 자동 재작업
→ 3번째도 미통과 → 사용자에게 진단 ("이 작업은 더 깊은 거 같음")

이게 v2의 차별점. **첫 초안 대신 검증된 결과만 출력.**

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
/오늘    # /today 보다 직관적
/취업    # /career 보다 명확
/고민    # /gomin 보다 의미 명확
/공모전  # /contest 보다 한국적
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

### 🔁 Pipeline + Sub-Actions (v2)
gstack의 35개 명령어 패턴을 6개 안에 압축:
- 명령어 자체에 sub-action (예: `/취업 풀준비`)
- 1개 명령어 = 여러 단계 자동 실행
- Bar-Raiser 자동 검증

---

## 🛠️ 커스터마이징

각 슬래시 커맨드는 마크다운 파일이라 **자유롭게 수정 가능**:

```bash
# 자소서 커맨드 수정
code ~/.claude/commands/career.md

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

- **[gstack by Garry Tan](https://github.com/garrytan/gstack)** — CEO 모드 컨셉 + Pipeline 패턴
- **[LangChain DeepAgents](https://github.com/langchain-ai/deepagents)** — 하네스 엔지니어링
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
