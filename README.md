# homebrew-tap

Homebrew tap for [Default Apps](https://github.com/sunven/default-apps), a macOS default-app management tool.

## Install

```sh
brew tap sunven/tap
brew install --cask default-apps
```

Some Homebrew versions may first prompt for `brew trust sunven/tap`.

## Notes

- Apple Silicon (ARM64) only, macOS Ventura or later.
- This build is ad-hoc signed and not notarized. If Gatekeeper blocks the first launch, run:

```sh
xattr -dr com.apple.quarantine "/Applications/Default Apps.app"
```
