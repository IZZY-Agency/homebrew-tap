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
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.4.0/sitboard-0.4.0-macos-arm64.tar.gz"
      sha256 "9365b5e888f35c2cb7fd775353e7b5ab5f8a52b6b661b79fff84f09963a9495b"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.4.0/sitboard-0.4.0-macos-x86_64.tar.gz"
      sha256 "5234ff6803434c8f9165527a723198d98aa051d14d243377f6ed38e7383ba94f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.4.0/sitboard-0.4.0-linux-arm64.tar.gz"
      sha256 "4f0ce7b0730542333a95945bedb1efe830cc1dc9fdb336cd8a18c25d5e57dedc"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/sitboard/releases/download/v0.4.0/sitboard-0.4.0-linux-x86_64.tar.gz"
      sha256 "a37d9effaa10557644f4763349b85b8e988c3704afa6b5de315214a5fab2ad4b"
    end
  end

  def install
    bin.install "sitboard"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sitboard --version")
  end
end
