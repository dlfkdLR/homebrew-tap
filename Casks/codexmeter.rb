cask "codexmeter" do
  version "1.4.7"
  sha256 "6e67c5d1e07e0bfc47213cbe2f0ef1f4e0ff8b3f0f9038dc69c169b91581e98b"

  url "https://github.com/HechoLP/CodexMeter/releases/download/v#{version}/CodexMeter-#{version}.zip"
  name "CodexMeter"
  desc "Local Codex and Claude Code token usage in the menu bar"
  homepage "https://github.com/HechoLP/CodexMeter"

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
