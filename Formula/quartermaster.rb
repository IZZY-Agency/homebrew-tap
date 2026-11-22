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
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.1.1/quartermaster-0.1.1-macos-arm64.tar.gz"
      sha256 "fdb88790475fa3dfa3ab0dd4a0a24b24a4fefa6c4384e1d6dcca967326653aa7"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.1.1/quartermaster-0.1.1-macos-x86_64.tar.gz"
      sha256 "ccb0d4108889df94bb1791522ab92ca03ae7ce59ec90a5cc89ab7703e6771068"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.1.1/quartermaster-0.1.1-linux-arm64.tar.gz"
      sha256 "492fdb2a5637e77cc4c446a2c1e9533ec8efc7c25291eb1a13557c2e611be070"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.1.1/quartermaster-0.1.1-linux-x86_64.tar.gz"
      sha256 "82bfd0e56fff6c47a155a2f99fbc5bb60e42a6db1e69f7f420e7d6149fd6e3d5"
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
