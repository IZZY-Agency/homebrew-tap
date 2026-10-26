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
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.4.0/tg-0.4.0-macos-arm64.tar.gz"
      sha256 "7c44d28ee74d9f70fdb6d4a3767b9403a6159627dd2a8f347d80cac969f0af9b"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.4.0/tg-0.4.0-macos-x86_64.tar.gz"
      sha256 "a108875ec8060878ef18e34c244de1cabcd6475c1d30f52d6b8e55adb6788f45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.4.0/tg-0.4.0-linux-arm64.tar.gz"
      sha256 "748d57e098affc0d013f7f01b32313d486e7125031e6faf2c5d46d5eaf90e191"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.4.0/tg-0.4.0-linux-x86_64.tar.gz"
      sha256 "561b24e02ef69267440d784cb588fadb7a78c109696a520766a6b14c722ad2ff"
    end
  end

  def install
    bin.install "tg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tg --version")
  end
end
