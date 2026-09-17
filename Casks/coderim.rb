cask "coderim" do
  version "2.1.3"
  sha256 "29b10a6d9c5de8c12b020ed02e59459d241aa6a1073287abcadb2d9bdfb50181"

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
