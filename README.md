# dlfkdLR Homebrew Tap

## CodeRim

CodeRim shows coding-assistant usage limits in a macOS edge notch, with local
Codex and Claude token history, a CLI and native widgets. Supports macOS 14 or later.

```sh
brew install --cask dlfkdLR/tap/coderim
```

### Upgrade from CodexMeter

```sh
brew update
brew migrate --cask dlfkdLR/tap/codexmeter
brew upgrade --cask --greedy dlfkdLR/tap/coderim
```

The cask rename retains installation history and replaces the old app with
CodeRim.app. Existing settings, saved accounts and usage history remain intact.
If an in-app update already installed the same version under the old filename,
use `brew reinstall --cask dlfkdLR/tap/coderim` to normalize the app path.

### First launch

The app is ad-hoc signed and not notarized by Apple. Homebrew verifies the
published archive against the cask SHA-256 checksum. After verifying this source:

```sh
xattr -dr com.apple.quarantine /Applications/CodeRim.app
open /Applications/CodeRim.app
```

The command applies only to the installed CodeRim app. Use Settings → Diagnostics
→ Install CLI to enable `coderim` in `~/.local/bin`.

```sh
brew upgrade --cask --greedy dlfkdLR/tap/coderim
brew uninstall --cask dlfkdLR/tap/coderim
```

[Source, releases and checksums](https://github.com/dlfkdLR/CodexMeter)
