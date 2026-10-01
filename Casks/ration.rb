cask "ration" do
  version "1.10.0"
  sha256 "d8a69ab9d8ffa7aa96eeb5d245ae795d0cb72322ef2ddbfd419c7f9df302c167"

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
