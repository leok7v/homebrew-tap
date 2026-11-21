# Homebrew cask for the DMG on leok7v/Codexese's releases. That repo holds
# only the signed and notarized builds; the source is not public. version
# and sha256 are written by this repo's .github/workflows/cask.yml; do not
# edit them by hand.

cask "codexese" do
  version "261121.2124"
  sha256 "a7e9a4a79be8c61eac65b2555cf0b6f7a7b6bdb4fe7ca7a3214460a7c49d2d78"

  url "https://github.com/leok7v/Codexese/releases/download/v#{version}/Codexese.dmg"
  name "Codexese"
  desc "Writes a message as a page of an unreadable manuscript and reads it back"
  homepage "https://leok7v.github.io/Codexese/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Codexese.app"

  zap trash: "~/Library/Containers/com.leok7v.codexese"
end
