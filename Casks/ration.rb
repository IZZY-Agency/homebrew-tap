cask "ration" do
  version "1.6.0"
  sha256 "693a70cd821df071c2ba7d6f4d8bcb556c3f76b26fa5e1ec1b94d155d69c26ed"

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
