cask "ration" do
  version "1.0.0"
  sha256 "667e52df284d2b339a8a7ecd735221b250b9990723c81ea4c6e28ed5392363f7"

  url "https://github.com/IZZY-Agency/ration/releases/download/v#{version}/Ration-#{version}.dmg",
      verified: "github.com/IZZY-Agency/ration/"
  name "Ration"
  desc "Menu-bar meter for Claude, Codex and Cursor usage limits"
  homepage "https://ration.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "Ration.app"

  uninstall quit: "agency.izzy.ration"

  zap trash: "~/Library/Containers/agency.izzy.ration"
end
