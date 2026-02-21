# Repository Guidelines

## Testing Workflow
- When a `make test` target exists, use it for every local run. It mirrors CI, so keep it green before pushing or opening a pull request.

## Python Execution
- When executing any Python script or module, always use `uv run <file>` (for example, `uv run scripts/bootstrap.py`) to guarantee consistent environments across contributors and automation.

## Python Tooling
- Run `uvx ruff format` regularly to keep code style aligned with the formatter expected by CI.
- Run `uvx check --fix` just as often to auto-correct lint issues before they land in reviews.

## Git Workflow
- Always branch from the mainline before starting work (`git checkout -b feature/name`). Avoid committing directly to the default branch so reviews stay clean and reversible.
