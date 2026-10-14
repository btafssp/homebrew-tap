cask "verbamac" do
  version "1.0.1"
  sha256 "04a519304d13250c502e3523948b86b2435cdb01b69405bb23575f144a928032"

  url "https://github.com/btafssp/VerbaMac/releases/download/v#{version}/VerbaMac-#{version}.zip"
  name "VerbaMac"
  desc "Latin and Greek dictionary browser with Lewis & Short, LSJ and Morpheus"
  homepage "https://github.com/btafssp/VerbaMac"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "VerbaMac.app"

  zap trash: [
    "~/Library/Application Support/VerbaMac",
    "~/Library/Caches/org.verbamac.app",
    "~/Library/Preferences/org.verbamac.app.plist",
  ]

  caveats <<~EOS
    VerbaMac is not notarized by Apple. On first launch macOS may block it;
    open System Settings > Privacy & Security and click "Open Anyway".
    Alternatively: xattr -dr com.apple.quarantine /Applications/VerbaMac.app
  EOS
end
