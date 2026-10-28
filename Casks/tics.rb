cask "tics" do
  version "0.3.0"
  sha256 "a7fff1ce984d03e815e5e3612bcb85d67b71caed7f44eebf4f634b7d4ecb1022"

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
