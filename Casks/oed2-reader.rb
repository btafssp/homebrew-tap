cask "oed2-reader" do
  version "0.9.0"
  sha256 "eca9812e781db02d9cdc469114203e0b1968996e6284eedd3ea1f797a5ba49ad"

  url "https://github.com/btafssp/oed2-reader-mac/releases/download/v#{version}/OED-#{version}.zip"
  name "OED"
  desc "Unofficial native reader for your own OED2 CD-ROM data"
  homepage "https://github.com/btafssp/oed2-reader-mac"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "OED.app"

  # Never remove ~/Library/Application Support/OED: it holds your own database.
  zap trash: [
    "~/Library/Caches/io.github.oed2reader.OED",
    "~/Library/Preferences/io.github.oed2reader.OED.plist",
    "~/Library/Saved Application State/io.github.oed2reader.OED.savedState",
  ]

  caveats <<~EOS
    No dictionary data is included. Convert your own OED2 CD-ROM HTML with the
    scripts in converter/ (see the README) and place the result at:
      ~/Library/Application Support/OED/oed.sqlite

    OED is not notarized by Apple. If macOS blocks it:
      xattr -dr com.apple.quarantine /Applications/OED.app
  EOS
end
