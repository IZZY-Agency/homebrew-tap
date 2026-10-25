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
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.3.0/tg-0.3.0-macos-arm64.tar.gz"
      sha256 "75d8b86175854fb5ef235cdcff482b1dafbb081688c517e05a74da1a1fcdf3f3"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.3.0/tg-0.3.0-macos-x86_64.tar.gz"
      sha256 "94f94046e241bbc60983ad21fab816591cca9ee4d491eaf1d353ec69c13cd88b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.3.0/tg-0.3.0-linux-arm64.tar.gz"
      sha256 "cb519f83a28a55605d17daeb69cf146393a20eb05e7812e2926a69c2523f307b"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.3.0/tg-0.3.0-linux-x86_64.tar.gz"
      sha256 "cc4dc4e3672e738bdacf2fcda85b11a125bf44e3415dadf5c3c0b826327e463a"
    end
  end

  def install
    bin.install "tg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tg --version")
  end
end
