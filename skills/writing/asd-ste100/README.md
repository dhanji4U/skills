# asd-ste100

Apply ASD-STE100 (Simplified Technical English) rules to technical copy, procedural steps, and agent outputs. Enforces sentence limits (20 words for procedures, 25 for descriptions), active voice, controlled dictionary mappings, and single-instruction steps.

## What it enforces

- Word limits: Maximum 20 words for procedural steps; maximum 25 words for descriptive statements
- Grammar constraints: Active voice only, simple tenses, imperative commands
- Banned forms: Progressive (`-ing`) forms and passive voice in procedural steps
- Noun clusters: Maximum 3 consecutive nouns
- Controlled vocabulary: Standard root mappings (`use` for `utilize`, `make sure` for `ensure`, `before` for `prior to`, `fill` for `replenish`)
- Single instruction per procedural step

## Install

```bash
npx skills add dhanji4U/skills --skill asd-ste100 --global
```

## Sources

- [ASD-STE100 Specification](https://www.asd-ste100.org) (AeroSpace and Defence Industries Association of Europe)
- Simplified Technical English Maintenance Group (STEMG)

## License

MIT
