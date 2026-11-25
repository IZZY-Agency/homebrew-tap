cask "ration" do
  version "1.13.4"
  sha256 "7f41622847d15a724453134f66113b2fa88fdc343ca9555c3efb536634271ff7"

  url "https://github.com/IZZY-Agency/ration/releases/download/v#{version}/Ration-#{version}.dmg"
  name "Ration"
  desc "Menu-bar meter for Claude, Codex and Cursor usage limits"
  homepage "https://ration.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe

  app "Ration.app"

  uninstall quit: "agency.izzy.ration"

  zap trash: "~/Library/Containers/agency.izzy.ration"
end
