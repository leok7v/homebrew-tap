# Homebrew cask for the DMG that Caffeinate's .github/workflows/dmg.yml
# publishes. version and sha256 are written by this repo's
# .github/workflows/cask.yml; do not edit them by hand.

cask "caffeinate" do
  version "261118.1618"
  sha256 "70ec52033b22fcaa46a7e676706db6604d7b87cc3902a7c28a8f3b60e9c28d1d"

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
