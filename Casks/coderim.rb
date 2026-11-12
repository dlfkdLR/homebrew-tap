# frozen_string_literal: true

cask "coderim" do
  version "2.1.37"
  sha256 "c5832e5a3b66e111e138460aab2382e235e2c4c10f6bd3327fa8d851636685b4"

  url "https://github.com/dlfkdLR/CodeRim/releases/download/v#{version}/CodeRim-#{version}.zip"
  name "CodeRim"
  desc "Coding-assistant usage limits, local token history, CLI and widgets"
  homepage "https://github.com/dlfkdLR/CodeRim"

  auto_updates true
  depends_on macos: :sonoma

  app "CodeRim.app"
end
