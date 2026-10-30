class LinkryptCli < Formula
  desc "CLI for linkrypt.sh end-to-end-encrypted sharing"
  homepage "https://linkrypt.sh/"
  license "MIT"

  livecheck do
    url :stable
    regex(/^cli-v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  on_macos do
    on_arm do
      url "https://github.com/IZZY-Agency/linkrypt/releases/download/cli-v1.0.1/linkrypt-aarch64-apple-darwin.tar.gz"
      sha256 "7b9afe3293859e3a4fbeb5e7d932a2024d2f60cf855711d7b6b5125425409b87"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/linkrypt/releases/download/cli-v1.0.1/linkrypt-x86_64-apple-darwin.tar.gz"
      sha256 "e23b26ba51c9b74292af458981574f6cbffb0945e7f206216b27a35b91e137b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IZZY-Agency/linkrypt/releases/download/cli-v1.0.1/linkrypt-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8a3e92a3973abc9acf5d62cb69af4729503588dc0e10a1808ab40c067c6fe992"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/linkrypt/releases/download/cli-v1.0.1/linkrypt-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5a8dfdcec62871919dc6af189fe92f21d96ad9ce438e3cb158c58906767f4cc6"
    end
  end

  def install
    bin.install "linkrypt"
    bin.install_symlink "linkrypt" => "lk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/linkrypt --version")
  end
end
