# frozen_string_literal: true

cask "coderim" do
  version "2.1.40"
  sha256 "3d0b8f15372f2285e6db0fcd46cb5f19bc5f3298a4edb91e851c94e4e65a0730"

  url "https://github.com/dlfkdLR/CodeRim/releases/download/v#{version}/CodeRim-#{version}.zip"
  name "CodeRim"
  desc "Coding-assistant usage limits, local token history, CLI and widgets"
  homepage "https://github.com/dlfkdLR/CodeRim"

  auto_updates true
  depends_on macos: :sonoma

  app "CodeRim.app"
end
