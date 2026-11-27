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
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.4.1/quartermaster-0.4.1-macos-arm64.tar.gz"
      sha256 "fb3aeae1ad0b705b70b7e896340f8da0f481f7317a0a118e156fd53b60a63ac6"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.4.1/quartermaster-0.4.1-macos-x86_64.tar.gz"
      sha256 "400b12f09f7c154c780725a24cfc73e945b63982c611aa00e66c5c3e9f4e2d3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.4.1/quartermaster-0.4.1-linux-arm64.tar.gz"
      sha256 "37a3a908d9389fd4fc8f67c198c34a9e637498f3d8814793a3cd239de12e91c6"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.4.1/quartermaster-0.4.1-linux-x86_64.tar.gz"
      sha256 "1b43727305a91cd0336346eafc4845549025d122d6338e257010b68f3240b485"
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
