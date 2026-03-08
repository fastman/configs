# AGENTS.md

## Purpose

This repository stores terminal editor and multiplexer dotfiles.
Agentic coding agents should treat it as a configuration repo, not an application repo.

## Scope

Primary tracked files:

- `vim/vimrc`
- `vim/vimrc_cam`
- `tmux/tmux.conf`
- `screen/screenrc`

There is no app build system, package manager lockfile, or unit test framework.

## Environment Assumptions

- POSIX shell on macOS/Linux
- Vim installed (`vim`)
- tmux installed (`tmux`) for tmux config checks
- GNU screen optionally installed (`screen`) for screen config checks

## Cursor / Copilot Rules

- No Cursor rules detected (`.cursorrules` and `.cursor/rules/` are absent).
- No Copilot instructions detected (`.github/copilot-instructions.md` is absent).

If such files are added later, agents must treat them as higher-priority local rules.

## Build / Lint / Test Commands

This repo has no traditional build, lint, or test pipeline.
Use syntax and load checks as validation.

## Quick Validation (all configs)

```bash
vim -Nu NONE -n -es "+source vim/vimrc" +qa
vim -Nu NONE -n -es "+source vim/vimrc_cam" +qa
tmux -f tmux/tmux.conf -L dotfiles-check start-server \; show -gqv prefix \; kill-server
screen -c screen/screenrc -dmS dotfiles_check && screen -S dotfiles_check -X quit
```

## Single-File Validation (important)

Run one file at a time while editing:

```bash
# Single "test" for vim/vimrc
vim -Nu NONE -n -es "+source vim/vimrc" +qa

# Single "test" for vim/vimrc_cam
vim -Nu NONE -n -es "+source vim/vimrc_cam" +qa

# Single "test" for tmux config
tmux -f tmux/tmux.conf -L dotfiles-check start-server \; show -gqv status \; kill-server

# Single "test" for screen config
screen -c screen/screenrc -dmS dotfiles_check && screen -S dotfiles_check -X quit
```

## Optional Runtime Smoke Checks

```bash
# Run Vim with a repo config directly
vim -u vim/vimrc
vim -u vim/vimrc_cam
```

Manual checks inside Vim:

- `:PluginInstall`
- `:PluginClean`
- `:messages`

## Code Style Guidelines

## General

- Make minimal, targeted edits.
- Preserve current structure and comment style.
- Keep historical comments unless they are clearly wrong or outdated.
- Prefer explicit plugin repo names over ambiguous plugin aliases.
- Do not silently remove user-specific behavior.

## Formatting

- Keep existing indentation and spacing style per file.
- Do not run auto-formatters; these files are hand-maintained.
- In plugin blocks, align inline comments when touching nearby lines.
- Keep one logical setting per line.

## Naming Conventions

- Vim globals use `g:` prefix (example: `let g:plugin_option = ...`).
- Environment variables in Vimscript use `$NAME` style (example: `$PATH`).
- Keep plugin names as canonical repos (`owner/repo`) where possible.
- For tmux, keep option names canonical (`set -g`, `set -s`, `set -ag`).

## Imports / Dependencies (config equivalent)

- Vim plugins are declared via Vundle `Plugin 'owner/repo'` entries.
- Keep plugin declarations grouped by topical sections (colors, git, syntax).
- Prefer maintained upstream repos over deprecated mirrors when updating.
- Do not introduce a new plugin manager unless explicitly requested.

## Types / Data Shapes

- Vimscript strings: prefer single quotes when interpolation is not required.
- Vimscript booleans: use `0/1` where plugins expect numeric toggles.
- Vimscript lists: use `[ ... ]` with consistent spacing.
- tmux values: quote only when needed; keep plugin var prefixes (for example `@dracula-*`).

## Error Handling and Guards

- Use guards before environment-specific behavior:
  - `if exists('$TERM') ...`
  - `if has('gui_running') ...`
  - `if executable('ag') ...`
- Avoid hard-failing startup commands in shell/editor init files.
- Prefer conditional enablement to global assumptions.

## Compatibility Rules

- Keep compatibility with current user workflows.
- Treat hardcoded paths as intentional unless explicitly asked to generalize.
- Preserve key mappings unless user asks for remapping.
- Keep tmux/screen terminal settings consistent with current stack.

## Editing Rules for Agents

- Do not edit files outside requested scope.
- Do not reorder large config sections unless requested.
- Do not replace multilingual comments; preserve user-authored context.
- When modernizing plugin repos, keep behavior identical where possible.

## Verification Checklist for Changes

For any changed file:

1. File loads without syntax/runtime errors.
2. Only requested sections changed.
3. Existing mappings and theme behavior still work.
4. Plugin repo changes still map to same plugin functionality.
5. Comments are concise and aligned with nearby style.

## Commit Guidance (when asked to commit)

- Use concise commit messages focused on intent.
- Mention config area touched (`vim`, `tmux`, `screen`).

Examples:

- `Normalize Vim plugin repositories to maintained upstreams`
- `Align plugin inline comments in vimrc files`

## What Not To Do

- Do not introduce unrelated refactors.
- Do not add heavy tooling to this dotfiles repo.
- Do not force-remove legacy entries without user request.
- Do not modify terminal security posture without explicit approval.

## Notes for Future Agents

- This repo is intentionally simple and manual.
- "Tests" here mean config load checks, not unit tests.
- If rule files are added later (`.cursorrules`, `.cursor/rules/`, Copilot instructions),
  update this file and follow those rules first.
