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
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.2.0/sitboard-0.2.0-macos-arm64.tar.gz"
      sha256 "aef72b622290f0860a03b6cc2a3accdd889009c0ea666ae64fbc8a2b5e350c4e"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.2.0/sitboard-0.2.0-macos-x86_64.tar.gz"
      sha256 "bb94543de7ebd4819f7d321d3184fb79cc0555b57afd7b12cf8287dda0540f6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.2.0/sitboard-0.2.0-linux-arm64.tar.gz"
      sha256 "7715478e082db75ed8a895fdced906db64d459438ad96b26404e2fea8a7e9d46"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.2.0/sitboard-0.2.0-linux-x86_64.tar.gz"
      sha256 "bef584f294127b84a4fd03e3acb95b12113b0d36b8ec6da1e534b82e0d9d18e0"
    end
  end

  def install
    bin.install "sitboard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sitboard --version")
  end
end
