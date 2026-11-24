class Quartermaster < Formula
  desc "Picks the model and effort for each Claude Code worker and reviewer"
  homepage "https://github.com/IZZY-Agency/quartermaster"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.2.1/quartermaster-0.2.1-macos-arm64.tar.gz"
      sha256 "a877cb899798ef63e2a051298d49db3e3d48a0e61078c101afe16134bd03a8f9"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.2.1/quartermaster-0.2.1-macos-x86_64.tar.gz"
      sha256 "3894aa38b5683a280710d7751ac8c37d158785664f26b442ac503295c902878d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.2.1/quartermaster-0.2.1-linux-arm64.tar.gz"
      sha256 "71a29dc5cc0c3de2d514d8bc73ad59050e1436e557e5d75a3b4a6f80b57f2d5b"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.2.1/quartermaster-0.2.1-linux-x86_64.tar.gz"
      sha256 "11e27201a479d8f8b63c100c2cd0b68d1a612e55df70ba0ac10b0a9d2364768a"
    end
  end

  def install
    bin.install "qm"
    bin.install "qm-privcheck" if OS.mac?
    pkgshare.install "share/quartermaster/plugins"
  end

  def caveats
    <<~EOS
      Run qm init to set quartermaster up.
    EOS
  end

  test do
    assert_match "qm #{version} (", shell_output("#{bin}/qm --version")
  end
end
