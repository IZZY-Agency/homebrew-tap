cask "linkrypt" do
  version "1.1.0"
  sha256 "8a632c80892a556b074f2394fb4192873685a134d4c6b6231a745eaa021a87fd"

  url "https://github.com/IZZY-Agency/linkrypt/releases/download/macos-v#{version}/Linkrypt-#{version}.dmg"
  name "Linkrypt"
  desc "End-to-end-encrypted sharing from the menu bar"
  homepage "https://linkrypt.sh/"

  livecheck do
    url :url
    regex(/^macos-v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  depends_on macos: :sequoia

  app "Linkrypt.app"

  uninstall quit: "sh.linkrypt.mac"

  zap trash: [
    "~/Library/Caches/sh.linkrypt.mac",
    "~/Library/HTTPStorages/sh.linkrypt.mac",
    "~/Library/Preferences/sh.linkrypt.mac.plist",
    "~/Library/Saved Application State/sh.linkrypt.mac.savedState",
  ]
end
