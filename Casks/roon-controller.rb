cask "roon-controller" do
  version "1.0.2"
  sha256 "6c484253487e1a6d3a5d55f28753a4a55bc2cf744545bf5edbfb8afc502a0303"

  url "https://github.com/renesenses/roon-controller/releases/download/v1.0.2/RoonController.dmg"
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
