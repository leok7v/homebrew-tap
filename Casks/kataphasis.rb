# Homebrew cask for the DMG that Kataphasis's .github/workflows/dmg.yml
# publishes. version and sha256 are written by this repo's
# .github/workflows/cask.yml; do not edit them by hand.

cask "kataphasis" do
  version "0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/leok7v/kataphasis/releases/download/v#{version}/Kataphasis.dmg"
  name "Kataphasis"
  desc "Text-only web search: results as plain text, no video or sound"
  homepage "https://github.com/leok7v/kataphasis"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Kataphasis.app"

  zap trash: [
    "~/Library/Caches/com.leok7v.kataphasis",
    "~/Library/HTTPStorages/com.leok7v.kataphasis",
    "~/Library/Preferences/com.leok7v.kataphasis.plist",
    "~/Library/Saved Application State/com.leok7v.kataphasis.savedState",
    "~/Library/WebKit/com.leok7v.kataphasis",
  ]
end
