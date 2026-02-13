cask "roon-controller" do
  version "1.0.2"
  sha256 "82ae6b3741fe2897c55abcbbd7dbc3d88f66fb9d2ccaf90482fcf500ba6538f9"

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
