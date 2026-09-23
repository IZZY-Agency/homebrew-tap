cask "linkrypt" do
  version "1.0.1"
  sha256 "e30561e499bebd17cff9e85d388b0230b0ae04be643daa94adf43d59d11dae5f"

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
