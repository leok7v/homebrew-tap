# Homebrew cask for the DMG that md.too's .github/workflows/dmg.yml
# publishes. version and sha256 are written by this repo's
# .github/workflows/cask.yml; do not edit them by hand.

cask "md-too" do
  version "260927.2152"
  sha256 "fcc0c66bb5c0a797b6ea2ad5135cf210eb672fb37d454367442cbb4d66f8f043"

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
