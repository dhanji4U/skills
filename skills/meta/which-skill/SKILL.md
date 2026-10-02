---
name: which-skill
description: |
  Find and recommend the right agent skill for any task, problem, or question across the curated skills library.
  Use when the user asks "which skill should I use", "what skill fits this", "how do I do X", or when the user
  has a problem but doesn't know what skill exists to solve it. Also auto-triggers when work is ambiguous or needs routing.
license: MIT
metadata:
  original_author: "Community"
  source_repo: "dhanji4U/skills"
  license: "MIT"
  source_url: "https://github.com/dhanji4U/skills/tree/main/skills/meta/which-skill"
---

# Which Skill: Universal Skill Router

Route any task, question, or situation to the right agent skill in the library.

You do not need to memorize every skill. When a problem arrives—or when you or the user are unsure how to proceed—use this routing matrix to find the high-leverage skill that fits.

---

## The Routing Matrix

### 1. Conception, Ideas & Planning

| Situation | Recommended Skill | Why It Fits |
|:---|:---|:---|
| Idea is fuzzy; requirements not settled | **`grill-me`** or **`grill-with-docs`** | Relentless 1-question-at-a-time interview to pin down real user intent. |
| Requirements feel bloated, slow, or arbitrary | **`the-algorithm`** | Elon Musk's 5-step process: question requirement, delete parts, optimize, accelerate, automate. |
| Challenging the core premise before building | **`attack-the-premise`** | Tests whether the problem is worth solving before writing code. |
| Designing a complex system or service | **`architect`** | Creates structural blueprints and checks against architectural red flags. |
| High-risk change that could break dependencies | **`blast-radius`** | Maps upstream/downstream callers and calculates blast radius before editing. |
| Greenfield project / massive multi-session build | **`to-spec`** → **`to-tickets`** | Converts ideas into specs, then splits into self-contained blocker-linked tickets. |

### 2. Forensics & Understanding Code

| Situation | Recommended Skill | Why It Fits |
|:---|:---|:---|
| "How does this code / repo work?" | **`how`** | Traces code execution, component ownership, and boundaries without altering state. |
| "Why was this written this way?" | **`why`** | Deep archaeology through commits, PRs, and history to uncover original design rationale. |
| Need a plain-human, zero-jargon explanation | **`bro`** | Translates complex technical concepts into direct, friendly, jargon-free English. |
| Verifying a claim against empirical evidence | **`verify-this`** | Captures baseline vs treatment artifacts to prove or disprove a technical claim. |

### 3. Debugging & Remediation

| Situation | Recommended Skill | Why It Fits |
|:---|:---|:---|
| Intermittent, hard, or flaky bug | **`diagnosing-bugs`** | Establishes a tight red-green reproduction loop before hypothesizing fixes. |
| Bug keeps returning / symptom patching | **`fix-root-causes`** | Refuses superficial patches; fixes underlying structural causes. |
| GitHub Actions CI failed | **`fix-ci`** + **`loop-on-ci`** | Inspects failure logs, isolates root cause, and loops until green. |
| In-progress merge or rebase conflict | **`fix-merge-conflicts`** | Resolves conflicts hunk-by-hunk based on intent traced to primary sources. |

### 4. Implementation & Craft

| Situation | Recommended Skill | Why It Fits |
|:---|:---|:---|
| Building a feature or behavior | **`tdd`** | Red-green-refactor loop. Writes the failing test first, then the minimal code. |
| Testing behavior rather than implementation | **`test-behavior-not-implementation`** | Calls code like users do; stops tests breaking on benign internal refactors. |
| Designing functions, APIs, or data models | **`type-system-discipline`** | Uses types to make illegal states unrepresentable. |
| Writing stateful business logic | **`model-the-domain`** | Maps domain concepts cleanly into the type system before writing procedures. |
| Building repetitive tasks into tools | **`build-the-lever`** | Builds a script or lever when doing a task for the second or third time. |
| Concurrent state or distributed writes | **`separate-before-serializing`** | Eliminates shared write locks before serializing state. |

### 5. Refactoring & Codebase Health

| Situation | Recommended Skill | Why It Fits |
|:---|:---|:---|
| Too much code / dead weight / bloat | **`subtract-before-you-add`** | Deletes dead code and simplifies interfaces before adding new features. |
| Code full of AI boilerplate and slop | **`deslop`** | Strips generic AI coding patterns, redundant comments, and defensive clutter. |
| Code littered with obvious/noisy comments | **`no-comments`** | Removes comments that repeat what the code says; encodes constraints in types. |
| Sunsetting old APIs or migrating callers | **`migrate-callers-then-delete-legacy`** | Migrates all call sites first, then completely deletes the legacy code. |

### 6. Review, Verification & Shipping

| Situation | Recommended Skill | Why It Fits |
|:---|:---|:---|
| Aggressive security & correctness audit | **`thermo-nuclear-review`** | Deep multi-axis security audit with harsh rubrics for production code. |
| Architectural debt & giant file review | **`thermo-nuclear-code-quality-review`** | Flags sprawling files, leaky abstractions, and tangled modules. |
| Preparing a PR to be merged safely | **`review-and-ship`** | Checks intent fit, runs tests, creates conventional commit, and opens PR. |
| Proving changes work before declaring done | **`prove-it-works`** | Verifies against real runtime artifacts, logs, or outputs before claiming success. |
| Tidying a PR so human reviewers love it | **`make-pr-easy-to-review`** | Cleans commit noise, improves descriptions, and groups diffs logically. |

### 7. Documentation & Writing

| Situation | Recommended Skill | Why It Fits |
|:---|:---|:---|
| Prose, docs, or PR descriptions sound like AI | **`antislop`** or **`unslop`** | Strips negative parallelisms, inflated significance, em-dash addiction, and AI buzzwords. |
| Writing structured technical documentation | **`technical-writing`** | Diátaxis framework (tutorials, how-to guides, reference, explanation) with clear prose. |

### 8. Scaling, Agents & Meta

| Situation | Recommended Skill | Why It Fits |
|:---|:---|:---|
| Large task that can be split into parallel workers | **`swarm`** | Fans out N independent subagent workers and synthesizes results. |
| Long-running work needing an audit log | **`show-me-your-work`** | Maintains a timestamped decision trail in TSV for unattended execution. |
| Opinionated, disciplined agent execution | **`poteto-mode`** or **`dyl-mode`** | High-signal, unslopped responses with deliberate subagent routing. |
| Need a second opinion from a stronger model | **`advisor`** | Consults a stronger model before critical architectural decisions. |
| Designing a CLI that AI agents can run | **`cli-for-agents`** | Non-interactive flags, structured errors, idempotency, and clean `--help`. |

---

## Operating Instructions for the Agent

When `which-skill` is triggered (either explicitly by the user or automatically when intent is ambiguous):

1. **Identify the Core Need**: Distill the user's situation into one primary category (Planning, Understanding, Fixing, Building, Refactoring, Reviewing, Writing, Scaling).
2. **Select the Top 1–2 Skills**: Pick the exact match from the matrix. Do not dump all 72 skills on the user.
3. **Present the Recommendation in 3 Parts**:
   - **Recommended Skill**: Name and category.
   - **Why It Fits**: 1–2 sentences connecting the skill's strength directly to the user's problem.
   - **Immediate Next Step**: The exact prompt or action to execute right now.
4. **Offer Execution**: Ask the user if they'd like you to invoke that skill immediately.
