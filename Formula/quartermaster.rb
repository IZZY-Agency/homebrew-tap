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
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.1.0/quartermaster-0.1.0-macos-arm64.tar.gz"
      sha256 "2046545f9b3977976bfb6feaef556c2f26924dca5f540d594f0ee6c276a29718"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.1.0/quartermaster-0.1.0-macos-x86_64.tar.gz"
      sha256 "e70dc45a3f53a053f99d6a1ae8df13606887f0bb6c42ac6f6aef71adbd9774a7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.1.0/quartermaster-0.1.0-linux-arm64.tar.gz"
      sha256 "cae29bdb14dd0e46ab0240d2eac141cd85096a64bb5356ba662168c8839419c0"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.1.0/quartermaster-0.1.0-linux-x86_64.tar.gz"
      sha256 "dcf93ec94bea4450f1cd1306c7b6b861f5d309f15c425cbae3672ed44daccf41"
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
