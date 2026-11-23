# frozen_string_literal: true

cask "coderim" do
  version "2.1.39"
  sha256 "b7232a5e22a4f8151dd653566a79a8f8fb84c0823b87368ae74e8eff4ae1f539"

  url "https://github.com/dlfkdLR/CodeRim/releases/download/v#{version}/CodeRim-#{version}.zip"
  name "CodeRim"
  desc "Coding-assistant usage limits, local token history, CLI and widgets"
  homepage "https://github.com/dlfkdLR/CodeRim"

  auto_updates true
  depends_on macos: :sonoma

  app "CodeRim.app"
end
