---
name: new-branch-and-pr
description: Create a fresh branch, complete work, and open a pull request
metadata:
  source_repo: "cursor/plugins"
  source_plugin: "cursor-team-kit"
  original_author: "Cursor"
  license: "MIT"
  source_url: "https://github.com/cursor/plugins/tree/main/cursor-team-kit/skills/new-branch-and-pr"
---

# New branch and PR

## Trigger

Starting work that should be shipped through a clean branch and pull request workflow.

## Workflow

1. Ensure the working tree is clean or explicitly handled.
2. Create a descriptive branch from the latest main.
3. Complete implementation and tests.
4. Commit focused changes and push.
5. Create a concise PR with summary and test notes.

## Guardrails

- Keep branch scope focused on one change set.
- Include verification notes before requesting review.

## Output

- New branch name
- PR summary and test notes
- PR URL
