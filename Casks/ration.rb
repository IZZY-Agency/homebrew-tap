cask "ration" do
  version "1.2.0"
  sha256 "fe32c3c751936751ff8fc60a810650f2533749ef794ea33c80d36bec1706e172"

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
