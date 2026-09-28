# Homebrew cask for the DMG that md.too's .github/workflows/dmg.yml
# publishes. version and sha256 are written by this repo's
# .github/workflows/cask.yml; do not edit them by hand.

cask "md-too" do
  version "260928.0708"
  sha256 "7321962fec6b14f6057d4a36ab87bfb2a78c196c7f382bfbd75b6d17b17ced71"

  url "https://github.com/leok7v/md.too/releases/download/v#{version}/md.too.dmg"
  name "md.too"
  desc "Minimalist read-only Markdown viewer with a Quick Look extension"
  homepage "https://leok7v.github.io/md.too/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "md.too.app"

  zap trash: [
    "~/Library/Containers/com.leok7v.md.too",
    "~/Library/Containers/com.leok7v.md.too.QuickLook",
  ]
end
