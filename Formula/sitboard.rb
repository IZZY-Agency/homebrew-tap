class Sitboard < Formula
  desc "Live local board of your AI coding agents, their pull requests and checks"
  homepage "https://sitboard.com"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.1.0/sitboard-0.1.0-macos-arm64.tar.gz"
      sha256 "b159c012f0898b1b88cd0f1cfb5af6e96fe9decdbbf11a881c26a3d9372bb584"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.1.0/sitboard-0.1.0-macos-x86_64.tar.gz"
      sha256 "c73b4825f89ae228f4c19effb26efb82e79f7be8d433a885d0a28dbc69a60f9f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.1.0/sitboard-0.1.0-linux-arm64.tar.gz"
      sha256 "a58434b593e109bad1a0685fc2e35e3b0b10e9433c464e890e8545513857ba32"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.1.0/sitboard-0.1.0-linux-x86_64.tar.gz"
      sha256 "f2c15c4ebcd8e54eae18b34e2bc22969c9d569381b3c2dd237ac0c603fa25ba4"
    end
  end

  def install
    bin.install "sitboard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sitboard --version")
  end
end
