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
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.6.0/sitboard-0.6.0-macos-arm64.tar.gz"
      sha256 "5570f863cfe953c11c71f130549489bdb12c022746eacd86ca794e6a19919ac0"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.6.0/sitboard-0.6.0-macos-x86_64.tar.gz"
      sha256 "927609c8b6432e8246b396c001f39a9c0ec2eb5c3b9271b28b9fa92be19b64b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.6.0/sitboard-0.6.0-linux-arm64.tar.gz"
      sha256 "a7213536274c766d6c3ef8cd5ced0d6b90cd0d11a656e85a8602112dbd693dfc"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.6.0/sitboard-0.6.0-linux-x86_64.tar.gz"
      sha256 "b3ab3f67c51803ecd7ae463344e45b1d7621bc8a5b88a00dd83e67905bac7572"
    end
  end

  def install
    bin.install "sitboard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sitboard --version")
  end
end
