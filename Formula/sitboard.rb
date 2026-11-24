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
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.5.0/sitboard-0.5.0-macos-arm64.tar.gz"
      sha256 "010e84d1870993e991941b1710d491580ddd29971ba2beac15e920b30967b1c6"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.5.0/sitboard-0.5.0-macos-x86_64.tar.gz"
      sha256 "4c7cefc8a0612541e030e5af5c138ef4d2ba7b3ac2758337363f1bff7474d83a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.5.0/sitboard-0.5.0-linux-arm64.tar.gz"
      sha256 "1178a2b5884c529bf5d994d1d591c80f35c75ae2e0ced03328daeb4c623fdc7a"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.5.0/sitboard-0.5.0-linux-x86_64.tar.gz"
      sha256 "553024c7eb472aaa13752f4d9291c270c6f8f80c2c4c796971842e332755d28c"
    end
  end

  def install
    bin.install "sitboard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sitboard --version")
  end
end
