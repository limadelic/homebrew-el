class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.62"

  url "https://github.com/limadelic/el/releases/download/v0.1.62/el-0.1.62.tar.gz"
  sha256 "826d9e6a883dbd2d3d1d92e88d62a223ff9fd4c018761ec835526e39e7e5ba42"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
