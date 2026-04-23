class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.44"

  url "https://github.com/limadelic/el/releases/download/v0.1.44/el-0.1.44.tar.gz"
  sha256 "6d5b6dcbc821e4e3ecb021ce9ca868b90f3002ead85c0f759e3df577f01e3bc2"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
