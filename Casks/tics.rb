cask "tics" do
  version "0.4.0"
  sha256 "61bb7ffeedebb623df4405182d265dd9d94218889959bcd4bda7c813ba9b8a7e"

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
