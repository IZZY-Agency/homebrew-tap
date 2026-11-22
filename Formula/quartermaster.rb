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
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.2.0/quartermaster-0.2.0-macos-arm64.tar.gz"
      sha256 "56b05aae9035b6d8e75b434df35e1ca25abcbecf77a2175b1f50f3767cc4b421"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.2.0/quartermaster-0.2.0-macos-x86_64.tar.gz"
      sha256 "c461214524a095e59c05c5d583bc6382502d465f79296f8b6f044581abc80ab8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.2.0/quartermaster-0.2.0-linux-arm64.tar.gz"
      sha256 "8d3bb250106f3d2cd3d67b48b6c1830bdea567a5c7c76141eae9c6f07f8c2f05"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.2.0/quartermaster-0.2.0-linux-x86_64.tar.gz"
      sha256 "24c45dc1316f9593598d9714b122ed4844aa1c792c9efb0592073682cd99e769"
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
