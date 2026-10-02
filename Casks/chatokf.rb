# Homebrew cask for the DMG that ChatOKF's .github/workflows/dmg.yml
# publishes. version and sha256 are written by this repo's
# .github/workflows/cask.yml; do not edit them by hand.

cask "chatokf" do
  version "26.10.02"
  sha256 "de0f16c73d591b4201281b74288c3c65edd722e1bb06ced4fc40e798096f8f91"

  url "https://github.com/leok7v/ChatOKF/releases/download/v#{version}/ChatOKF.dmg"
  name "ChatOKF"
  desc "Chat app running GGUF models locally on Metal"
  homepage "https://github.com/leok7v/ChatOKF"

  # brew can compare versions again, so `brew outdated` and `brew upgrade`
  # work without --greedy, and livecheck tells it where to look.
  livecheck do
    url :url
    strategy :github_latest
  end

  # Float16 runs through the whole engine and does not exist on Intel;
  # project.yml excludes x86_64 for that reason, so there is no universal
  # build to offer.
  depends_on arch: :arm64
  # project.yml sets the macOS deployment target to 15.0.
  depends_on macos: :sequoia

  app "ChatOKF.app"

  # The app is sandboxed, so everything it owns lives in its container.
  # Models are tens of gigabytes and are downloaded on demand, which is
  # why zap and not uninstall: removing them is an explicit act.
  zap trash: [
    "~/Library/Application Scripts/io.github.leok7v.ChatOKF",
    "~/Library/Containers/io.github.leok7v.ChatOKF",
    "~/Library/Group Containers/group.io.github.leok7v.ChatOKF",
  ]
end
