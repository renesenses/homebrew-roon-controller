cask "roon-controller" do
  version "1.0.1"
  sha256 "90203d500e826b3331cae9ead7ce07fa652ab92a03c6a430e583a7c5620fd2f3"

  url "https://github.com/renesenses/roon-controller/releases/download/v1.0.1/RoonController-beta.dmg"
  name "Roon Controller"
  desc "Native macOS remote control for Roon"
  homepage "https://github.com/renesenses/roon-controller"

  depends_on macos: ">= :sequoia"

  app "Roon Controller.app"

  zap trash: [
    "~/Library/Preferences/com.bertrand.RoonController.plist",
    "~/Library/Saved Application State/com.bertrand.RoonController.savedState",
  ]

  caveats <<~EOS
    #{token} is not signed with an Apple Developer ID.
    On first launch, right-click the app and choose "Open" to bypass Gatekeeper.
    Then authorize "Roon Controller macOS" in Roon > Settings > Extensions.
  EOS
end
