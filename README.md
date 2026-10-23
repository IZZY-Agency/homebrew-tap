# IZZY.Agency Homebrew tap

```sh
brew install --cask izzy-agency/tap/ration
brew install --cask izzy-agency/tap/linkrypt
brew install izzy-agency/tap/linkrypt-cli
brew install izzy-agency/tap/claude-tg
```

| Package | What it is | Source |
|---|---|---|
| `ration` (cask) | Menu-bar meter for Claude, Codex and Cursor usage limits (macOS 26+) | [IZZY-Agency/ration](https://github.com/IZZY-Agency/ration) · [ration.sh](https://ration.sh) |
| `linkrypt` (cask) | End-to-end-encrypted sharing from the menu bar (macOS 15+) | [IZZY-Agency/linkrypt](https://github.com/IZZY-Agency/linkrypt) · [linkrypt.sh](https://linkrypt.sh) |
| `linkrypt-cli` (formula) | The `linkrypt` command-line client, with the `lk` alias (macOS and Linux) | [IZZY-Agency/linkrypt](https://github.com/IZZY-Agency/linkrypt) · [linkrypt.sh](https://linkrypt.sh/en/cli) |
| `claude-tg` (formula) | Claude Code sessions on your phone: Telegram alerts, live feed and replies (macOS and Linux) | [IZZY-Agency/claude-tg](https://github.com/IZZY-Agency/claude-tg) |

`brew upgrade` picks up new releases. The casks point at the signed, notarized
`.dmg` attached to each GitHub release, and the formula at the release's
prebuilt binaries (macOS ones signed and notarized); every download is pinned
by its SHA-256.
