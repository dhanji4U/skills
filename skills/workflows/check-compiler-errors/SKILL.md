---
name: check-compiler-errors
description: Run compile and type-check commands and report failures
metadata:
  source_repo: "cursor/plugins"
  source_plugin: "cursor-team-kit"
  original_author: "Cursor"
  license: "MIT"
  source_url: "https://github.com/cursor/plugins/tree/main/cursor-team-kit/skills/check-compiler-errors"
---

# Check compiler errors

## Trigger

Compile or type-check failures are blocking local validation or CI.

## Workflow

1. Run the repo's compile and type-check commands.
2. Summarize errors by file and type.
3. Fix the highest-confidence issues first.
4. Re-run checks until clean or blocked.

## Output

- Current compile and type-check status
- Error summary grouped by file and category
- Fixes applied and remaining blockers
