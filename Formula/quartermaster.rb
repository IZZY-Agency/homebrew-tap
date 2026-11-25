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
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.3.0/quartermaster-0.3.0-macos-arm64.tar.gz"
      sha256 "a68f63f3a1c274ebff783814b84eead4b02f0c619ab3f93ae7f4d18cc0ac0a57"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.3.0/quartermaster-0.3.0-macos-x86_64.tar.gz"
      sha256 "e2e51e8349ad49845e395c1f97499dd2b30682ef2d03f54448e0b1a558051422"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.3.0/quartermaster-0.3.0-linux-arm64.tar.gz"
      sha256 "2a878b8022199a1eb75eb3bcc2a10485597dcb6430672dd9ae5abea5cab63b5e"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/quartermaster/releases/download/v0.3.0/quartermaster-0.3.0-linux-x86_64.tar.gz"
      sha256 "d1c06d961d08bb738a165794e1cf00184b486dbba4569aea76e6f4b9fa6037b3"
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
