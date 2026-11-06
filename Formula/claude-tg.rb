class ClaudeTg < Formula
  desc "Claude Code sessions on your phone: Telegram alerts, live feed and replies"
  homepage "https://github.com/IZZY-Agency/claude-tg"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.5.0/tg-0.5.0-macos-arm64.tar.gz"
      sha256 "f80bcb1ff356eeeaca01005506b08de2073949f5f574d5f6079a79a3a6ecf50f"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.5.0/tg-0.5.0-macos-x86_64.tar.gz"
      sha256 "97e02c5877a8d236c41dcc4a2fa65b80a9328ff7b9aa9e87e0589a5f62567a22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.5.0/tg-0.5.0-linux-arm64.tar.gz"
      sha256 "4d12e2c72f3f6363e8e5bd683cbc3b21ab85ef8c896baa9691e5e8c93de07a45"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.5.0/tg-0.5.0-linux-x86_64.tar.gz"
      sha256 "bcd0463cd4753d93e61b7a17425ccf15ea2774a47f3d3474e8cac976388b60c3"
    end
  end

  def install
    bin.install "tg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tg --version")
  end
end
