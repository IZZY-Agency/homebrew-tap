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
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.4.0/quartermaster-0.4.0-macos-arm64.tar.gz"
      sha256 "2c3633f0d758106e4dc472fed286072084716ce0c29a77e1261803f4a9c87fcf"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.4.0/quartermaster-0.4.0-macos-x86_64.tar.gz"
      sha256 "6a37ad01eba02ddffaebe2dc0d061c19e38abd252b6021f23bb04c8735ba5742"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.4.0/quartermaster-0.4.0-linux-arm64.tar.gz"
      sha256 "f9bfb79416539924d74e2f16431a975f204786c73a66d22ee9afc1555d7a7244"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.4.0/quartermaster-0.4.0-linux-x86_64.tar.gz"
      sha256 "e81661a3e9dd9e6f112e170fe0769c5a2e6b97f46c4ab3257b3f4487e91bc3aa"
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
