# Homebrew cask for the DMG that Caffeinate's .github/workflows/dmg.yml
# publishes. version and sha256 are written by this repo's
# .github/workflows/cask.yml; do not edit them by hand.

cask "caffeinate" do
  version "000000.0000"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/leok7v/Caffeinate/releases/download/v#{version}/Caffeinate.dmg"
  name "Caffeinate"
  desc "Menu bar app that keeps the Mac awake, with the lid closed too"
  homepage "https://github.com/leok7v/Caffeinate"

  livecheck do
    url :url
    strategy :github_latest
  end

  # project.pbxproj sets the macOS deployment target to 13.0; the app is
  # a universal binary.
  depends_on macos: :ventura

  app "Caffeinate.app"

  uninstall quit: "io.github.leok7v.Caffeinate"

  zap trash: "~/Library/Containers/io.github.leok7v.Caffeinate"
end
