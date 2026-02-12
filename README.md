# juanjecilla/homebrew-tap

Homebrew tap for juanjecilla tools.

## Usage

```bash
brew tap juanjecilla/tap
brew install mdtolinkedin
```

## Formulae
- `mdtolinkedin`: Convert Markdown to LinkedIn-compatible text.

## Maintainer Setup

Required tools:
- `brew`
- `gh`
- `python3`

Recommended checks before pushing formula changes:

```bash
# Ensure this checkout is the active tap checkout for local validation.
brew tap --custom-remote juanjecilla/tap "$(pwd)"

# Validate style and audit (requires internet on first run to install audit gems).
HOMEBREW_NO_AUTO_UPDATE=1 brew style juanjecilla/tap/mdtolinkedin
HOMEBREW_NO_AUTO_UPDATE=1 brew audit --strict juanjecilla/tap/mdtolinkedin

# Smoke-check that Homebrew can resolve the formula.
HOMEBREW_NO_AUTO_UPDATE=1 brew info juanjecilla/tap/mdtolinkedin
HOMEBREW_NO_AUTO_UPDATE=1 brew install --formula --dry-run juanjecilla/tap/mdtolinkedin
```

Notes:
- `brew style`/`brew audit` run against Homebrew's tap checkout, not arbitrary file paths.
- Confirm the active tap checkout path with `brew --repository juanjecilla/tap`.

Supported release artifacts in this tap:
- macOS `arm64`
- macOS `x86_64`
- Linux `x86_64`
