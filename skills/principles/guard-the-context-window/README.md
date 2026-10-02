# guard-the-context-window

Apply when context is filling up: large outputs, long files, repeated reads, fan-out planning. Route bulk to subagents; keep summaries in the main thread, not raw payloads.

## Install

```bash
npx skills add dhanji4U/skills --skill guard-the-context-window --global
```

## Source

- Original: [pstack](https://github.com/cursor/plugins/tree/main/pstack/skills/principle-guard-the-context-window) by Lauren Tan
- License: MIT
- Repository: [cursor/plugins](https://github.com/cursor/plugins)

## License

MIT
