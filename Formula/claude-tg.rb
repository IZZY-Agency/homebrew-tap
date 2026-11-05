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
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.4.1/tg-0.4.1-macos-arm64.tar.gz"
      sha256 "6acd6d2ab2f25fda66738dda7ce25e5b1bf83228082221116bc77c12df1ca931"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.4.1/tg-0.4.1-macos-x86_64.tar.gz"
      sha256 "1c6ad5587448243e4144e26e3e255b7a9dca274378a94f471509cb683791cd6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.4.1/tg-0.4.1-linux-arm64.tar.gz"
      sha256 "db1de25232466fb6fbdd1b6a3ebf85c8c516d12e89044e7a9b3440fd7e68d58a"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.4.1/tg-0.4.1-linux-x86_64.tar.gz"
      sha256 "657ec49e5be3a5637d772d460a4cf8362e5eef4deffab2f1080cccdda3e41c6d"
    end
  end

  def install
    bin.install "tg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tg --version")
  end
end
