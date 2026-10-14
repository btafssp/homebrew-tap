cask "verbamac" do
  version "1.0.0"
  sha256 "004dc95fc1aac20f99aa54e934279014cb846fc317b24fd7af9ab0c95e6dd364"

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
