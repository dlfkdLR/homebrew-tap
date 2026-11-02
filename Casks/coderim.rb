# frozen_string_literal: true

cask "coderim" do
  version "2.1.28"
  sha256 "9f4b63b592751491d6d3198fbe72ef2f0ab6ecc175cfa4aa95fc743f039334d6"

  url "https://github.com/dlfkdLR/CodeRim/releases/download/v#{version}/CodeRim-#{version}.zip"
  name "CodeRim"
  desc "Coding-assistant usage limits, local token history, CLI and widgets"
  homepage "https://github.com/dlfkdLR/CodeRim"

  auto_updates true
  depends_on macos: :sonoma

  app "CodeRim.app"

  caveats <<~EOS
    CodeRim is ad-hoc signed and is not notarized by Apple. Homebrew verifies
    the downloaded archive against this Cask's SHA-256 checksum, but macOS will
    still block the first launch.

    After reviewing the release source and confirming this Cask installed it,
    remove quarantine from CodeRim only and open the app:

      xattr -dr com.apple.quarantine /Applications/CodeRim.app
      open /Applications/CodeRim.app
  EOS
end
