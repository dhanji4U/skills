# antislop

Strip AI writing patterns from prose, documentation, commit messages, and PR descriptions. Covers 30 patterns across 6 categories, sourced from Wikipedia's "Signs of AI writing" and WikiProject AI Cleanup.

## What it catches

- Negative parallelisms ("not X, but Y")
- Copula avoidance ("serves as", "stands as", "functions as")
- Forced triads and mechanical rhythm
- Em dashes used as universal connectors
- AI vocabulary (delve, pivotal, testament, tapestry, landscape, etc.)
- Inflated significance and legacy puffery
- Formulaic "Challenges and Future Outlook" conclusions
- Canned procedural reassurances in commits/PRs
- Bold-colon listicles and decorative formatting
- Chatbot residue (Certainly!, Great question!, etc.)
- Hallucinated citations and phantom precision

## Install

```bash
npx skills add dhanji4U/skills --skill antislop --global
```

## Sources

- [blader/humanizer](https://github.com/blader/humanizer) (MIT) as the original foundation
- [Wikipedia:Signs of AI writing](https://en.wikipedia.org/wiki/Wikipedia:Signs_of_AI_writing)
- [Wikipedia:WikiProject AI Cleanup](https://en.wikipedia.org/wiki/Wikipedia:WikiProject_AI_Cleanup)

## License

MIT
