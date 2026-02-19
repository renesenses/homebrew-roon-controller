cask "roon-controller" do
  version "1.2.2"
  sha256 "567eed9ff12b9b39359737ccc2ecf7c1bcd41b2222a45f3d85695d7a07f63599"

  url "https://github.com/renesenses/roon-controller/releases/download/v1.2.2/RoonController.dmg"
  name "Roon Controller"
  desc "Native macOS remote control for Roon"
  homepage "https://github.com/renesenses/roon-controller"

  depends_on macos: ">= :monterey"

  app "Roon Controller.app"

  zap trash: [
    "~/Library/Preferences/com.bertrand.RoonController.plist",
    "~/Library/Saved Application State/com.bertrand.RoonController.savedState",
  ]

  caveats <<~EOS
    #{token} is not signed with an Apple Developer ID.
    On first launch, run: xattr -cr "/Applications/Roon Controller.app"
    Or go to System Settings > Privacy & Security > Open Anyway.
    Then authorize "Roon Controller macOS" in Roon > Settings > Extensions.
  EOS
end
