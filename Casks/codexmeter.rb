cask "codexmeter" do
  version "2.0.6"
  sha256 "a61838c94c27d98c9b0428f80b039c801910b6e2bc9d70ff29cf1c6658f58dfd"

  url "https://github.com/dlfkdLR/CodexMeter/releases/download/v#{version}/CodexMeter-#{version}.zip"
  name "CodexMeter"
  desc "Local Codex and Claude Code token usage in a floating edge notch"
  homepage "https://github.com/dlfkdLR/CodexMeter"

  auto_updates true
  depends_on macos: :sonoma

  app "CodexMeter.app"

  caveats <<~EOS
    CodexMeter is ad-hoc signed and is not notarized by Apple. Homebrew verifies
    the downloaded archive against this Cask's SHA-256 checksum, but macOS will
    still block the first launch.

    After reviewing the release source and confirming this Cask installed it,
    remove quarantine from CodexMeter only and open the app:

      xattr -dr com.apple.quarantine /Applications/CodexMeter.app
      open /Applications/CodexMeter.app
  EOS
end
