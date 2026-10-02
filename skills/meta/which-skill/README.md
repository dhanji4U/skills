# which-skill

Universal skill router for the curated skills library. Discovers and recommends the best agent skill for any problem, task, or question.

## What it does

Instead of forcing you to memorize dozens of individual skills, `which-skill` maps your immediate engineering situation across 8 lifecycle domains:

- **Conception & Planning** (`grill-me`, `the-algorithm`, `architect`, `to-spec`)
- **Forensics & Understanding** (`how`, `why`, `bro`, `verify-this`)
- **Debugging & Remediation** (`diagnosing-bugs`, `fix-root-causes`, `fix-ci`)
- **Implementation & Craft** (`tdd`, `type-system-discipline`, `build-the-lever`)
- **Refactoring & Code Health** (`subtract-before-you-add`, `deslop`, `no-comments`)
- **Review & Verification** (`thermo-nuclear-review`, `review-and-ship`, `prove-it-works`)
- **Documentation & Writing** (`antislop`, `unslop`, `technical-writing`)
- **Scaling & Agents** (`swarm`, `poteto-mode`, `advisor`, `cli-for-agents`)

## Install

```bash
npx skills add dhanji4U/skills --skill which-skill --global
```

Or install with `install.sh`:
```bash
./install.sh --agent antigravity --skill which-skill
```

## How to Use

Simply ask your agent:
> *"Which skill should I use for: [describe what you're dealing with]?"*

Or invoke directly:
> *"`/which-skill` We have a memory leak in background workers and don't know where it started."*

## License

MIT
