# Curated Agent Skills

A production-grade, platform-agnostic library of **73 curated developer skills** for AI coding assistants. Works across **Antigravity**, **OpenAI Codex**, **Claude Code**, **Cursor**, **Aider**, **Windsurf**, and any agent adhering to the [skills.sh](https://skills.sh) standard or reading standard `SKILL.md` instructions.

All skills are 100% self-contained, fully attributed to their original creators under the MIT License, and accompanied by their companion reference prompts, rubrics, and patterns.

---

## Not Sure Which Skill to Use?

Use the built-in universal router skill **[`which-skill`](skills/meta/which-skill/)**:

```bash
# Ask your agent anytime:
"Which skill should I use for [describe your problem]?"
```

The agent will analyze the library and recommend the exact 1–2 high-leverage skills for your situation.

---

## Quickstart

### Method 1: Install with `npx skills` (skills.sh standard)

Install individual skills globally:

```bash
# Universal skill router
npx skills add dhanji4U/skills --skill which-skill --global

# Writing & antislop
npx skills add dhanji4U/skills --skill antislop --global

# Test-driven development
npx skills add dhanji4U/skills --skill tdd --global

# Core principles
npx skills add dhanji4U/skills --skill fix-root-causes --global
npx skills add dhanji4U/skills --skill subtract-before-you-add --global
```

### Method 2: Universal Cross-Agent Installer (`install.sh`)

Clone the repository and install skills directly into your agent's global or workspace directory in a single command:

```bash
# List all 73 skills across categories
./install.sh --list

# Install for Google Antigravity (~/.gemini/config/skills/)
./install.sh --agent antigravity --all
./install.sh --agent antigravity --category principles

# Install for OpenAI Codex (~/.agents/skills/)
./install.sh --agent codex --category workflows

# Install for Claude Code (~/.claude/skills/)
./install.sh --agent claude-code --all

# Install for Cursor local plugins (~/.cursor/plugins/local/curated-skills/skills/)
./install.sh --agent cursor --all

# Install for your current repository (./.agents/skills/)
./install.sh --agent project --category principles
```

---

## Agent Directory Reference

| Agent | Default Skill Location | Installation Command |
|:------|:-----------------------|:---------------------|
| **Antigravity** | `~/.gemini/config/skills/` | `./install.sh --agent antigravity --all` |
| **OpenAI Codex** | `~/.agents/skills/` | `./install.sh --agent codex --all` |
| **Claude Code** | `~/.claude/skills/` | `./install.sh --agent claude-code --all` |
| **Cursor** | `~/.cursor/plugins/local/curated-skills/skills/` | `./install.sh --agent cursor --all` |
| **Workspace (Repo)** | `./.agents/skills/` | `./install.sh --agent project --all` |

---

## Skills Catalog (73 Skills)

### Principles (24 skills) — Core Engineering Disciplines

| Skill | Description | Author / Source |
|:------|:------------|:----------------|
| [principle-attack-the-premise](skills/principles/attack-the-premise/) | Apply when two or more fixes that share one premise have failed the same gate. Take a census... | Lauren Tan |
| [principle-boundary-discipline](skills/principles/boundary-discipline/) | Apply when wiring validation, error handling, or framework adapters. Concentrate guards at s... | Lauren Tan |
| [principle-build-the-lever](skills/principles/build-the-lever/) | Apply to any non-trivial work, not just bulk work: edits, migrations, analyses, checks. Buil... | Lauren Tan |
| [principle-encode-lessons-in-structure](skills/principles/encode-lessons-in-structure/) | Apply when you catch yourself writing the same instruction a second time, or notice a recurr... | Lauren Tan |
| [principle-exhaust-the-design-space](skills/principles/exhaust-the-design-space/) | Apply when facing a novel UI interaction or architectural decision with no precedent in the ... | Lauren Tan |
| [principle-experience-first](skills/principles/experience-first/) | Apply when product, UX, or feature-scope tradeoffs come up. Choose user delight over impleme... | Lauren Tan |
| [principle-fix-root-causes](skills/principles/fix-root-causes/) | Apply when debugging. Trace each symptom to its root cause and fix it there; reproduce first... | Lauren Tan |
| [principle-foundational-thinking](skills/principles/foundational-thinking/) | Apply before writing logic: choosing core types and data structures, sequencing scaffold-vs-... | Lauren Tan |
| [principle-guard-the-context-window](skills/principles/guard-the-context-window/) | Apply when context is filling up: large outputs, long files, repeated reads, fan-out plannin... | Lauren Tan |
| [principle-laziness-protocol](skills/principles/laziness-protocol/) | Apply when refactoring, evaluating diff size, or tempted to add abstractions, layers, or sig... | Lauren Tan |
| [principle-make-operations-idempotent](skills/principles/make-operations-idempotent/) | Apply when designing commands, lifecycle steps, or processing loops that run amid crashes, r... | Lauren Tan |
| [principle-migrate-callers-then-delete-legacy-apis](skills/principles/migrate-callers-then-delete-legacy/) | Apply when introducing a new internal API while old callers still exist. Migrate callers and... | Lauren Tan |
| [principle-minimize-reader-load](skills/principles/minimize-reader-load/) | Apply when reviewing or shaping code that's hard to trace. Count layers between question and... | Lauren Tan |
| [principle-model-the-domain](skills/principles/model-the-domain/) | Apply when writing stateful logic, or when code branches a lot or repeats a shape assumption... | Lauren Tan |
| [principle-never-block-on-the-human](skills/principles/never-block-on-the-human/) | Apply when tempted to ask 'should I do X?' on reversible work. Proceed, present the result, ... | Lauren Tan |
| [principle-outcome-oriented-execution](skills/principles/outcome-oriented-execution/) | Apply during planned rewrites and migrations with explicit phase boundaries. Converge on the... | Lauren Tan |
| [principle-prove-it-works](skills/principles/prove-it-works/) | Apply after completing a task, before declaring done. Verify against the real artifact (run ... | Lauren Tan |
| [principle-redesign-from-first-principles](skills/principles/redesign-from-first-principles/) | Apply when integrating a new requirement into an existing design. Redesign as if the require... | Lauren Tan |
| [principle-separate-before-serializing-shared-state](skills/principles/separate-before-serializing/) | Apply when concurrent actors might write to the same file, branch, key, or state object. Eli... | Lauren Tan |
| [principle-sequence-verifiable-units](skills/principles/sequence-verifiable-units/) | Apply to multi-step work (sweeps, migrations, runs of similar edits) and to how you stack co... | Lauren Tan |
| [principle-subtract-before-you-add](skills/principles/subtract-before-you-add/) | Apply when sequencing an addition, refactor, or rewrite. Remove dead code, redundant validat... | Lauren Tan |
| [principle-test-behavior-not-implementation](skills/principles/test-behavior-not-implementation/) | Apply when you write, change, or keep a test. Call the code the way its users do and assert ... | Lauren Tan |
| [principle-the-algorithm](skills/principles/the-algorithm/) | Apply to any non-trivial change before designing it. Make the requirement less dumb, delete,... | Dylan Gattey |
| [principle-type-system-discipline](skills/principles/type-system-discipline/) | Apply when designing types, reviewing a function signature, or writing code in any staticall... | Lauren Tan |

### Workflows (21 skills) — Autonomous & Verifiable Execution

| Skill | Description | Author / Source |
|:------|:------------|:----------------|
| [automate-me](skills/workflows/automate-me/) | Use for \"automate me\", \"create/update/refresh my -mode skill\", \"turn/capture my prefere... | Lauren Tan |
| [check-compiler-errors](skills/workflows/check-compiler-errors/) | Run compile and type-check commands and report failures | Cursor |
| [create-verification-skill](skills/workflows/create-verification-skill/) | Generate a project-local verification skill that drives your app the way a user does — any l... | Lauren Tan |
| [fix-ci](skills/workflows/fix-ci/) | Find failing PR checks, inspect logs or external check links, and apply focused fixes | Cursor |
| [fix-merge-conflicts](skills/workflows/fix-merge-conflicts/) | Resolve merge conflicts non-interactively, validate build and tests, and finalize conflict r... | Cursor |
| [get-pr-comments](skills/workflows/get-pr-comments/) | Fetch and summarize review comments from the active pull request | Cursor |
| [loop-on-ci](skills/workflows/loop-on-ci/) | Monitor PR checks and fix failures until green. Uses gh pr checks as the source of truth for... | Cursor |
| [maintain-verification-skill](skills/workflows/maintain-verification-skill/) | Periodic pass that keeps a project's verification skill and feature map honest: parallel sou... | Lauren Tan |
| [make-pr-easy-to-review](skills/workflows/make-pr-easy-to-review/) | Prepare PRs for review by cleaning noisy history, improving PR descriptions, and adding revi... | Cursor |
| [new-branch-and-pr](skills/workflows/new-branch-and-pr/) | Create a fresh branch, complete work, and open a pull request | Cursor |
| [Poteto Mode](skills/workflows/poteto-mode/) | poteto's agent style for concise, detailed responses, deliberate subagents, unslopped prose,... | Lauren Tan |
| [dyl-ready-pr](skills/workflows/ready-pr/) | Get a PR merge-ready for Dylan: deep /dyl-review till 🟢, mark it ready, resolve conflicts, t... | Dylan Gattey |
| [review-and-ship](skills/workflows/review-and-ship/) | Review the current branch for bugs, intent fit, and test coverage; run or write tests; commi... | Cursor |
| [run-smoke-tests](skills/workflows/run-smoke-tests/) | Run Playwright smoke tests, debug failures, and verify fixes | Cursor |
| [show-me-your-work](skills/workflows/show-me-your-work/) | Keep a reviewable decision trail for long-running or unattended work: a TSV log with one row... | Lauren Tan |
| [swarm](skills/workflows/swarm/) | Fan out N parallel workers, drain them, and return one report. Use for /swarm, 'swarm this',... | Lauren Tan |
| [tdd](skills/workflows/tdd/) | Use only when the user explicitly asks for TDD, a failing test, or a regression test, OR whe... | Lauren Tan |
| [verify-this](skills/workflows/verify-this/) | Verify a claim with fresh local evidence: restate it falsifiably, capture baseline and treat... | Cursor |
| [weekly-review](skills/workflows/weekly-review/) | Produce a weekly synthesis of authored commits with highlights by bugfix, tech debt, and net... | Cursor |
| [what-did-i-get-done](skills/workflows/what-did-i-get-done/) | Summarize authored commits over a user-specified time period into a concise update | Cursor |
| [workflow-from-chats](skills/workflows/workflow-from-chats/) | Extract durable working preferences from recent Cursor chats and convert them into skills, r... | Cursor |

### Quality (8 skills) — Code Review, Deslop & Standards

| Skill | Description | Author / Source |
|:------|:------------|:----------------|
| [deslop](skills/quality/deslop/) | Remove AI-generated code slop and clean up code style | Cursor |
| [dyl-review](skills/quality/dyl-review/) | Review one or more PRs in Dylan's style: up to 7 copy-pasteable asks and one 🟢/🟡/🔴 call. Qui... | Dylan Gattey |
| [no-comments](skills/quality/no-comments/) | Spawn Comment Sicko, fix accepted findings, and offer encodings for claimed constraints. | Lauren Tan |
| [technical-writing](skills/quality/technical-writing/) | Layered technical-writing standard: Diátaxis structure, Google developer style sentences, ST... | Lauren Tan |
| [thermo-nuclear-code-quality-review](skills/quality/thermo-nuclear-code-quality-review/) | Run an extremely strict maintainability review for abstraction quality, giant files, and spa... | Cursor |
| [thermo-nuclear-review](skills/quality/thermo-nuclear-review/) | Comprehensive security and correctness audit of a branch's changes. Use for thermo nuclear, ... | Cursor |
| [typescript-best-practices](skills/quality/typescript-best-practices/) | TypeScript best practices. Use when reading or editing any .ts or .tsx file. | Lauren Tan |
| [unslop](skills/quality/unslop/) | Cut AI tells from any writing. Must always apply. | Lauren Tan |

### Thinking & Investigation (8 skills) — Root-Cause Reasoning

| Skill | Description | Author / Source |
|:------|:------------|:----------------|
| [arena](skills/thinking/arena/) | Spawn N parallel candidates at the same task, pick a base, graft the strongest parts of the ... | Lauren Tan |
| [bro](skills/thinking/bro/) | Restate the last message in plain human language, with no jargon. | Lauren Tan |
| [figure-it-out](skills/thinking/figure-it-out/) | Design an auditable playbook when no narrower one fits: a large migration, an ambitious mult... | Lauren Tan |
| [how](skills/thinking/how/) | Use for \"how does X work\", code walkthroughs before changing something, and placement / ow... | Lauren Tan |
| [interrogate](skills/thinking/interrogate/) | Use for \"interrogate\", \"adversarial review\", \"multi-model review\", \"challenge this\",... | Lauren Tan |
| [recall](skills/thinking/recall/) | Reconstruct your recent working context from your own chat history, live state, and the shar... | Lauren Tan |
| [reflect](skills/thinking/reflect/) | Spawn three parallel review subagents over the active transcript, surface learnings, and rou... | Lauren Tan |
| [why](skills/thinking/why/) | Use for 'why does X work this way', 'why we picked Y', design rationale, regressions, postmo... | Lauren Tan |

### Architecture (3 skills) — System Design & Blast Radius

| Skill | Description | Author / Source |
|:------|:------------|:----------------|
| [architect](skills/architecture/architect/) | Sketch types, signatures, and module structure before code, then stay in the loop while impl... | Lauren Tan |
| [blast-radius](skills/architecture/blast-radius/) | Find what a change could break somewhere else before it ships, beyond the diff, and prove th... | Lauren Tan |
| [dyl-mode](skills/architecture/dyl-mode/) | Dylan's agent style on top of pstack: concise verified delivery, root causes over symptom pa... | Dylan Gattey |

### Meta & Learning (8 skills) — Routers, Protocols & Skill Building

| Skill | Description | Author / Source |
|:------|:------------|:----------------|
| [advisor](skills/meta/advisor/) | Advisor mode. Consult a stronger (or different) model at key checkpoints: before major decis... | Cursor |
| [cli-for-agents](skills/meta/cli-for-agents/) | Designs or reviews CLIs so coding agents can run them reliably: non-interactive flags, layer... | Eric Zakariasson |
| [continual-learning](skills/meta/continual-learning/) | Orchestrate continual learning by delegating transcript mining and AGENTS.md updates to `age... | Eric Zakariasson |
| [create-learning-path](skills/meta/create-learning-path/) | Build a personalized learning roadmap with milestones and practice checkpoints | Cursor |
| [run-learning-retrospective](skills/meta/run-learning-retrospective/) | Evaluate learning progress, identify blockers, and adjust the learning plan | Cursor |
| [setup-pstack](skills/meta/setup-pstack/) | Configure which models pstack uses per role and at what reasoning budget. Detects your avail... | Lauren Tan |
| [teach](skills/meta/teach/) | Explain a body of work plainly so a person actually understands it. Runs the `how` and `why`... | Lauren Tan |
| [which-skill](skills/meta/which-skill/) | Find and recommend the right agent skill for any task, problem, or question across the curat... | Community |

### Writing (1 skill) — Humanized Prose & Documentation

| Skill | Description | Author / Source |
|:------|:------------|:----------------|
| [antislop](skills/writing/antislop/) | Rewrite AI-sounding text so it reads like a human domain expert without changing what it say... | blader / Wikipedia AI Cleanup |

---

## Credits & Upstream Authors

This repository curates and adapts skills created by generous engineers in the AI coding community. All skills retain their original MIT licenses and explicit attribution.

| Author / Contributor | Original Project / Source | Contribution |
|:---------------------|:--------------------------|:-------------|
| **Lauren Tan** | [`pstack`](https://github.com/cursor/plugins/tree/main/pstack) (MIT) | 40+ skills: Core principles, thinking playbooks, TDD, swarm, unslop, poteto-mode |
| **Dylan Gattey** | [`dyl-stack`](https://github.com/cursor/plugins/tree/main/dyl-stack) (MIT) | The Algorithm principle, dyl-mode, ready-pr, dyl-review |
| **Cursor Team** | [`cursor-team-kit`](https://github.com/cursor/plugins/tree/main/cursor-team-kit), [`thermos`](https://github.com/cursor/plugins/tree/main/thermos), [`teaching`](https://github.com/cursor/plugins/tree/main/teaching), [`advisor`](https://github.com/cursor/plugins/tree/main/advisor) (MIT) | Thermo-nuclear reviews, CI loop & fix skills, compiler checkers, advisor |
| **Eric Zakariasson** | [`cli-for-agent`](https://github.com/cursor/plugins/tree/main/cli-for-agent), [`continual-learning`](https://github.com/cursor/plugins/tree/main/continual-learning) (MIT) | CLI design patterns for agents, transcript memory extraction |
| **blader / Wikipedia AI Cleanup** | [`blader/humanizer`](https://github.com/blader/humanizer) (MIT), [Wikipedia Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing) | Antislop writing patterns and AI-phrase removal guide |

---

## Validation & Quality Assurance

To guarantee link integrity and frontmatter correctness across all agents, this repository runs a local and CI validation suite:

```bash
python3 scripts/validate.py
```

The suite validates:
1. Valid YAML frontmatter on every `SKILL.md` file.
2. Link verification ensuring zero 404s on companion references.
3. Synchronized index between `catalog.json` and the filesystem.

---

## Contributing

1. Fork this repository.
2. Add your skill under `skills/<category>/<skill-name>/SKILL.md`.
3. Ensure companion files are placed in `skills/<category>/<skill-name>/references/`.
4. Run `python3 scripts/validate.py` to verify syntax and link integrity.
5. Submit a pull request.

---

## License

MIT. See [LICENSE](LICENSE) for details.
