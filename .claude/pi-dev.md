# Pi Development with Git-AI Tracking

This is a Pi development session for git-ai with automatic git-ai tracking.

## Usage

Run from repo root:
```bash
pi -p "Your development task here"
```

Pi will:
1. Make changes to the codebase (Rust/agent support code)
2. Git-AI will automatically track which AI wrote each line
3. View with: `git blame <file>` or `~/.git-ai/bin/git-ai stats`

## Supported Commands

- `git blame <file>` - See AI authorship
- `~/.git-ai/bin/git-ai stats` - AI contribution metrics
- `~/.git-ai/bin/git-ai diff HEAD~1` - See diffs with AI tags
- `~/.git-ai/bin/git-ai show <id>` - Show prompt details

## Current Status

- **Project**: git-ai (Rust Git extension for AI code tracking)
- **Type**: Rust binary + agent support framework
- **AI Tools**: Pi, Claude Code, git-ai
- **Tracking**: Automatic via git-ai checkpoint on Pi commits
- **Version**: v1.0.9

Start developing!
