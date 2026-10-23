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
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.2.0/tg-0.2.0-macos-arm64.tar.gz"
      sha256 "e9cb06d6088c49a17762fbd1740c0090e0bfc9a554804fcb2312159f8ab2337e"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.2.0/tg-0.2.0-macos-x86_64.tar.gz"
      sha256 "ca345e50fe396ee2693780aaa830f5c810fa3a6572e4b5c72cd6123f8256b6df"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.2.0/tg-0.2.0-linux-arm64.tar.gz"
      sha256 "51363a2aa7cf14538d393a0890a2efef1f416a096fb8c70835a3d7b5b654b6e4"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.2.0/tg-0.2.0-linux-x86_64.tar.gz"
      sha256 "a955c32c5f93a4a99f9325a36321e9a7b9ef5e8ad53c531c5553abb6f930a301"
    end
  end

  def install
    bin.install "tg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tg --version")
  end
end
