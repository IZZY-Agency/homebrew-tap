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
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.3.0/sitboard-0.3.0-macos-arm64.tar.gz"
      sha256 "f9c698167e97c2132076b668bbaff5b7f4948f23d4dd0bb7008796b79e941bdf"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.3.0/sitboard-0.3.0-macos-x86_64.tar.gz"
      sha256 "4947591c189910bb972212ca83d010a2424d06193a42e713e6daaaa1c75251cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.3.0/sitboard-0.3.0-linux-arm64.tar.gz"
      sha256 "7ea431effa242c28d7e31d0790a0c6a318266932213982ef6a1f9424f262f367"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.3.0/sitboard-0.3.0-linux-x86_64.tar.gz"
      sha256 "19cfbc9883f3ed0e5cb148b9ee4cf77cf6b24f9e355cca242b3856edbe7389c2"
    end
  end

  def install
    bin.install "sitboard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sitboard --version")
  end
end
