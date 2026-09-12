cask "codexmeter" do
  version "2.0.10"
  sha256 "647782398b97de8e5672f74046640b295b4531f6f7e90834fc14166625ea7d48"

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
