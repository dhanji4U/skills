# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2.1.0] - 2026-10-03

### Added
- **ASD-STE100 Writing Skill (`skills/writing/asd-ste100/`)**: Complete specification and inspection guide for European aerospace Simplified Technical English (ASD-STE100). Enforces 20-word limits for procedural sentences, 25-word limits for descriptive statements, active imperative verbs only, max 3-word noun clusters, and controlled root vocabulary mapping.
- **Universal Skill Router (`which-skill`) Update**: Added direct routing to `asd-ste100` under Documentation & Writing for strict procedural copy, technical limits, and cognitive fatigue reduction.
- **Catalog & Index Synchronization**: Updated `catalog.json` and `README.md` to reflect 74 curated developer skills.

## [2.0.1] - 2026-10-02

### Changed
- **Dependencies**: Bumped GitHub Actions dependencies to their latest verified versions (`actions/checkout@v7`, `actions/setup-python@v7`, `github/codeql-action@v4`).

## [2.0.0] - 2026-10-02

### Added
- **73 Curated Agent Skills**: Fully self-contained, platform-agnostic skills adapted from open-source sources (`cursor/plugins`, `pstack`, `dyl-stack`, `thermos`, `cursor-team-kit`, `blader/humanizer`, and Wikipedia).
  - **Principles (24 skills)**: Core engineering disciplines including `fix-root-causes`, `subtract-before-you-add`, `prove-it-works`, `the-algorithm`, `type-system-discipline`, `build-the-lever`, `model-the-domain`, `laziness-protocol`, and `guard-the-context-window`.
  - **Workflows (21 skills)**: Autonomous and verifiable execution flows including `tdd`, `poteto-mode`, `swarm`, `automate-me`, `show-me-your-work`, `fix-ci`, `loop-on-ci`, `review-and-ship`, `make-pr-easy-to-review`, and `ready-pr`.
  - **Quality (8 skills)**: Code review standards and anti-slop tools including `unslop`, `deslop`, `no-comments`, `technical-writing`, `typescript-best-practices`, `thermo-nuclear-review`, `thermo-nuclear-code-quality-review`, and `dyl-review`.
  - **Thinking (8 skills)**: Root-cause reasoning and forensic playbooks including `figure-it-out`, `why`, `how`, `reflect`, `interrogate`, `recall`, `bro`, and `arena`.
  - **Architecture (3 skills)**: System design and dependency mapping including `architect`, `blast-radius`, and `dyl-mode`.
  - **Meta (8 skills)**: Agent evolution and routing tools including `which-skill`, `advisor`, `teach`, `setup-pstack`, `cli-for-agents`, `continual-learning`, `create-learning-path`, and `run-learning-retrospective`.
  - **Writing (1 skill)**: `antislop` (30 anti-AI writing patterns based on Wikipedia AI Cleanup).
- **Universal Skill Router (`which-skill`)**: An intelligent routing matrix that maps any task, bug, or question across 8 lifecycle domains to recommend the top 1–2 matching skills with copy-paste prompts.
- **Companion Reference Assets**: Integrated all 36 companion markdown assets (prompts, rubrics, incident playbooks, patterns) in local `references/` directories, achieving 100% link resolution and zero broken links.
- **Universal Installer (`install.sh`)**: CLI utility supporting 1-command installation by category, single skill, or all skills across Google Antigravity, OpenAI Codex, Claude Code, Cursor, and project workspaces.
- **Machine-Readable Registry (`catalog.json`)**: Complete metadata index of all 73 skills with descriptions, authors, source repositories, and relative paths.
- **Validation Suite (`scripts/validate.py`)**: Local test script that validates YAML frontmatter syntax, link integrity, and catalog-filesystem synchronization.
- **GitHub Actions CI (`.github/workflows/validate-skills.yml`)**: Continuous integration workflow running on all PRs and pushes to enforce link integrity and test the installer.
- **Repository Security Hardening**: Added `SECURITY.md`, `.github/workflows/codeql.yml` for automated CodeQL vulnerability analysis, and `.github/dependabot.yml` for weekly dependency monitoring.

### Changed
- **README.md**: Comprehensive overhaul with quickstart instructions, agent directory reference table, full categorized skills catalog, and a transparent **Credits & Upstream Authors** attribution table.

---

## [1.0.0] - 2026-09-10

### Added
- **Initial Skills Repository**: Established curated repository for AI coding assistants supporting Antigravity, Cursor, and the skills.sh standard.
- **Antislop Writing Skill (`skills/writing/antislop/`)**: Comprehensive guide and pattern catalog targeting 30 common AI writing tells across prose, documentation, commit messages, and pull request summaries.
