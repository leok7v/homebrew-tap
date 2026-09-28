# Homebrew cask for the DMG that md.too's .github/workflows/dmg.yml
# publishes. version and sha256 are written by this repo's
# .github/workflows/cask.yml; do not edit them by hand.

cask "md-too" do
  version "260928.0347"
  sha256 "0193ce724cdb68b9811104b0940d26a96bd34a92b7a4f1bbe77f28b760bdc5d2"

  url "https://github.com/leok7v/md.too/releases/download/v#{version}/md.too.dmg"
  name "md.too"
  desc "Minimalist read-only Markdown viewer with a Quick Look extension"
  homepage "https://leok7v.github.io/md.too/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "md.too.app"

  zap trash: [
    "~/Library/Containers/com.leok7v.md.too",
    "~/Library/Containers/com.leok7v.md.too.QuickLook",
  ]
end
