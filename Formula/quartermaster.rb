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
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.2.2/quartermaster-0.2.2-macos-arm64.tar.gz"
      sha256 "a7245f794f20c6de52b57647348802cde61e51f651b93bfb7c600ee18e9eddac"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.2.2/quartermaster-0.2.2-macos-x86_64.tar.gz"
      sha256 "15ea21ede021c8b92f3df56837c2f1963507809c8edc7a9fddd432a9c6a32e66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.2.2/quartermaster-0.2.2-linux-arm64.tar.gz"
      sha256 "c3e0d8551b4cf50b01666673114517e87728e17a6fba619b9e7cbd3d5bea5129"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.2.2/quartermaster-0.2.2-linux-x86_64.tar.gz"
      sha256 "34389cce49c09c78293dde1d5cfa1c3e5a6d1a4e6554537c0a9a7ad698e0a913"
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
