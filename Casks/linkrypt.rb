cask "linkrypt" do
  version "1.0.0"
  sha256 "d6670ee5dd5980c626e3e4efecc2290d3ee9913e5e5e0c24703518c6dc019646"

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
