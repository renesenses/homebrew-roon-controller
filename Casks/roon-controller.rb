cask "roon-controller" do
  version "1.0.7"
  sha256 "133639b9b697a909f4e723c8906e57af1291584616b09fccccfd6a44a211c3f3"

  url "https://github.com/renesenses/roon-controller/releases/download/v1.0.7/RoonController.dmg"
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
