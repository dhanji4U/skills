---
name: get-pr-comments
description: Fetch and summarize review comments from the active pull request
metadata:
  source_repo: "cursor/plugins"
  source_plugin: "cursor-team-kit"
  original_author: "Cursor"
  license: "MIT"
  source_url: "https://github.com/cursor/plugins/tree/main/cursor-team-kit/skills/get-pr-comments"
---

# Get PR comments

## Trigger

Need a concise, actionable summary of feedback on the active pull request.

## Workflow

1. Resolve the active PR for the current branch.
2. Fetch review comments and discussion comments.
3. Group feedback by severity and actionability.
4. Return a concise action list.

## Output

- Grouped feedback summary
- Action list ordered by priority
- Open questions that still need clarification