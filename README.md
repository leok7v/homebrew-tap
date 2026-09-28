# leok7v/tap

Homebrew casks for the macOS apps published at
[github.com/leok7v](https://github.com/leok7v).

    brew tap leok7v/tap
    brew trust leok7v/tap
    brew install --cask md-too      # the Markdown viewer
    brew install --cask chatokf     # the private AI chat

The middle line is Homebrew's gate on taps that are not its own; it asks
for it by name if you skip it.

| Cask | App | Needs |
|---|---|---|
| `md-too` | [md.too](https://leok7v.github.io/md.too/) | macOS 14 or newer, Apple Silicon or Intel |
| `chatokf` | [ChatOKF](https://leok7v.github.io/ChatOKF/) | macOS 15 or newer, Apple Silicon |

Every app here is signed with a Developer ID certificate, notarized and
stapled, so Gatekeeper accepts it even though Homebrew quarantines cask
installs.

**Don't do both!** An app that is also in the Mac App Store is the same
app there; install it one way, not both.

`brew upgrade` moves you to a newer release, and `brew outdated` says when
there is one. Each cask's version and digest are written by
`.github/workflows/cask.yml`, never by hand: release the app, then tag this
repository `<cask>-v<version>` (for example `md-too-v260927.2152`).
