cask "tics" do
  version "0.4.1"
  sha256 "600a0a20f89168f2de3d1b6e252524c7f4593d4f9cc6c0e67dc8a86649972b14"

  url "https://github.com/yestoall/tics/releases/download/v#{version}/TICS.dmg"
  name "TICS"
  desc "Mechanical keyboard and mouse sounds as you type and click"
  homepage "https://github.com/yestoall/tics"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Tics.app"

  uninstall quit: "com.yestoall.tics"

  zap trash: [
    "~/Library/HTTPStorages/com.yestoall.tics",
    "~/Library/Preferences/com.yestoall.tics.plist",
  ]
end
