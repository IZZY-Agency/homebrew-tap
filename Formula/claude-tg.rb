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
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.5.1/tg-0.5.1-macos-arm64.tar.gz"
      sha256 "b94f556d016a83d189000a30e9747a63786897c37cc1feb83c0c966cbba08d79"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.5.1/tg-0.5.1-macos-x86_64.tar.gz"
      sha256 "a6bbef89d77d3ef475b541ab05025db3ac689d7ec6dd6c04423f6c094b0dd33b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.5.1/tg-0.5.1-linux-arm64.tar.gz"
      sha256 "ad8cba516ae920779c3378860e3f8221cb573f9cc6054da7742bfd7a8fddafa0"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/claude-tg/releases/download/v0.5.1/tg-0.5.1-linux-x86_64.tar.gz"
      sha256 "9d284483d256c426962cce86e6dacb5a633701718089e8b6b36baf2ea253f41c"
    end
  end

  def install
    bin.install "tg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tg --version")
  end
end
