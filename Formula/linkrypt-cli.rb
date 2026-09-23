class LinkryptCli < Formula
  desc "CLI for linkrypt.sh end-to-end-encrypted sharing"
  homepage "https://linkrypt.sh/"
  version "1.0.0"
  license "MIT"

  livecheck do
    url :stable
    regex(/^cli-v?(\d+(?:\.\d+)+)$/i)
    strategy :github_releases
  end

  on_macos do
    on_arm do
      url "https://github.com/IZZY-Agency/linkrypt/releases/download/cli-v#{version}/linkrypt-aarch64-apple-darwin.tar.gz"
      sha256 "b97059501c688cb7e0a16e97be49e9f200757be1c70e68db1ca1ff9abbf2220a"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/linkrypt/releases/download/cli-v#{version}/linkrypt-x86_64-apple-darwin.tar.gz"
      sha256 "b006c133d1e70748aa5494a9966b11177f59f3bda418321f81ceda37449ec7f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/IZZY-Agency/linkrypt/releases/download/cli-v#{version}/linkrypt-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6d0e941c7de60b4dc40657043f0abe87ceb9a598945cf7f7b84365156bf4b487"
    end
    on_intel do
      url "https://github.com/IZZY-Agency/linkrypt/releases/download/cli-v#{version}/linkrypt-x86_64-unknown-linux-musl.tar.gz"
      sha256 "89a41493f06926638a0fc93577be58382c92fb057ec97d007911ae1db46e2291"
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
