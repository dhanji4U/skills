# separate-before-serializing

Apply when concurrent actors might write to the same file, branch, key, or state object. Eliminate the sharing first; serialize structurally only when one shared writer is a real invariant.

## Install

```bash
npx skills add dhanji4U/skills --skill separate-before-serializing --global
```

## Source

- Original: [pstack](https://github.com/cursor/plugins/tree/main/pstack/skills/principle-separate-before-serializing-shared-state) by Lauren Tan
- License: MIT
- Repository: [cursor/plugins](https://github.com/cursor/plugins)

## License

MIT
