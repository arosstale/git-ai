#!/usr/bin/env just --justfile

# git-ai development justfile

dev:
    @echo "=== git-ai Development (Rust) ==="
    @echo "Build: cargo build --release"
    @echo "Test: cargo test"
    @echo "Docs: cargo doc --open"
    @echo ""
    @echo "Develop with Pi:"
    @echo "  just pi 'your task'"
    @echo "  git blame <file>"
    @echo "  git-ai stats"

build:
    cargo build --release

test:
    cargo test

test-all:
    cargo test --all-features

doc:
    cargo doc --open

check:
    cargo check

clippy:
    cargo clippy -- -D warnings

fmt:
    cargo fmt --check

fmt-fix:
    cargo fmt

quality:
    cargo fmt --check && cargo clippy -- -D warnings && cargo test

install:
    cargo install --path .

# Pi + Git-AI integration
pi PROMPT:
    powershell -NoProfile -ExecutionPolicy Bypass -File "$env:USERPROFILE\.claude\scripts\pi-git-ai.ps1" -Prompt "{{PROMPT}}"

pi-interactive:
    powershell -NoProfile -ExecutionPolicy Bypass -File "$env:USERPROFILE\.claude\scripts\pi-git-ai.ps1" -Interactive

# View git-ai tracking (self-referential: git-ai tracking itself!)
blame FILE:
    ~/.git-ai/bin/git-ai blame {{FILE}}

stats:
    ~/.git-ai/bin/git-ai stats

diff COMMIT="HEAD~1":
    ~/.git-ai/bin/git-ai diff {{COMMIT}}

help:
    @echo "=== git-ai Justfile (Rust) ==="
    @echo ""
    @echo "Development:"
    @echo "  just build       - Cargo build release"
    @echo "  just test        - Run tests"
    @echo "  just test-all    - Run all tests with features"
    @echo "  just doc         - Open documentation"
    @echo "  just check       - Cargo check"
    @echo "  just clippy      - Linter with warnings"
    @echo "  just fmt         - Check formatting"
    @echo "  just fmt-fix     - Auto-fix formatting"
    @echo "  just quality     - All checks (fmt, clippy, test)"
    @echo "  just install     - Install binary locally"
    @echo ""
    @echo "Pi + Git-AI (Self-Referential!):"
    @echo "  just pi 'task'        - Run Pi with automatic git-ai tracking"
    @echo "  just pi-interactive   - Interactive Pi session"
    @echo "  just blame <file>     - View AI authorship (git-ai tracking itself!)"
    @echo "  just stats            - AI contribution stats"
    @echo "  just diff <commit>    - View diffs with AI tags"
    @echo ""
    @echo "  Read .claude/pi-dev.md for workflow details"
    @echo ""
    @echo "Note: This is self-referential - git-ai uses itself to track AI contributions!"
