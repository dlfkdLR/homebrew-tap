# frozen_string_literal: true

cask "coderim" do
  version "2.1.38"
  sha256 "9a0e2bab24a1f8ed43bdc5661b38fc5a672a30714a774804e91737efa675b6ad"

  url "https://github.com/dlfkdLR/CodeRim/releases/download/v#{version}/CodeRim-#{version}.zip"
  name "CodeRim"
  desc "Coding-assistant usage limits, local token history, CLI and widgets"
  homepage "https://github.com/dlfkdLR/CodeRim"

  auto_updates true
  depends_on macos: :sonoma

  app "CodeRim.app"
end
