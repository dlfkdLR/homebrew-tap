# frozen_string_literal: true

cask "coderim" do
  version "2.1.41"
  sha256 "4ac0af13250c2517683f3dd423df612db04a496913625cfea4021b19a0d4cf78"

  url "https://github.com/dlfkdLR/CodeRim/releases/download/v#{version}/CodeRim-#{version}.zip"
  name "CodeRim"
  desc "Coding-assistant usage limits, local token history, CLI and widgets"
  homepage "https://github.com/dlfkdLR/CodeRim"

  auto_updates true
  depends_on macos: :sonoma

  app "CodeRim.app"
end
