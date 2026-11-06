# Chris' dotfiles

macOS dotfiles managed by [chezmoi](https://chezmoi.io): fish + starship + fisher plugins, eza/bat/fzf/fd wiring, and a Brewfile.

## New machine

```sh
curl -fsSL https://raw.githubusercontent.com/ChristopherLiew/dotfiles/main/install.sh | sh
```

## Day to day

| | |
|---|---|
| `chezmoi edit ~/.config/fish/conf.d/abbr.fish` | edit a managed file |
| `chezmoi re-add` | pull live edits back into the repo |
| `chezmoi cd` then git commit/push | publish |
| `chezmoi update` | pull + apply on another machine |

Editing `fish_plugins` re-runs `fisher update` on the next apply.

## Layout (`~/.config/fish`)

- `config.fish` — locale, sources `custom.d/*.fish`, starship
- `custom.d/main.fish` — env: Go, Java (jenv), bun, Warp
- `conf.d/abbr.fish` — all abbreviations
- `conf.d/pimp.fish` — eza/bat aliases, fzf + man pager
- `conf.d/work.fish` — **not tracked**; machine/work-specific
- `requirements.txt` — Python packages; install into a venv/`uv`, not system Python
