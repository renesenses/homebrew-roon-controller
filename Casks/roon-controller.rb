cask "roon-controller" do
  version "1.1.0"
  sha256 "e159700669c1e503610ff3c8e91adf5330ef2fe286fab7f9f3948e5e71e411d5"

  url "https://github.com/renesenses/roon-controller/releases/download/v1.1.0/RoonController.dmg"
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
