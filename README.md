# Emiote Skills

A collection of agent skills for AI coding assistants. Works with [Antigravity](https://github.com/AntimatterAI/antigravity), [Cursor](https://cursor.sh), and any agent that supports the [skills.sh](https://skills.sh) standard.

## Skills

| Skill | Category | Description | Install |
|:------|:---------|:------------|:--------|
| [antislop](skills/writing/antislop/) | Writing | Strip AI writing patterns from prose, docs, commits, and PRs. 30 patterns sourced from Wikipedia's "Signs of AI writing" and WikiProject AI Cleanup. | `npx skills add dhanji4U/skills --skill antislop --global` |

## Install

Install a specific skill globally:

```bash
npx skills add dhanji4U/skills --skill antislop --global
```

Or with pnpm:

```bash
pnpm dlx skills add dhanji4U/skills --skill antislop --global
```

## What are skills?

Skills are structured instruction files (SKILL.md) that teach AI agents how to perform specific tasks. They are loaded into the agent's context and followed during code generation, writing, and review.

Read more at [skills.sh](https://skills.sh).

## Contributing

1. Fork this repository
2. Add your skill under `skills/<category>/<skill-name>/SKILL.md`
3. Update the skills table in this README
4. Open a pull request

Each skill needs a `SKILL.md` with YAML frontmatter (`name`, `description`, `license`, `metadata`) and markdown instructions. See [antislop](skills/writing/antislop/SKILL.md) as a reference.

## License

MIT. See [LICENSE](LICENSE) for details.

Individual skills may have additional attribution. The `antislop` skill is based on [blader/humanizer](https://github.com/blader/humanizer) (MIT) and [Wikipedia's Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing).
