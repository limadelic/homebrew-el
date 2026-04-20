class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.16"

  url "https://github.com/limadelic/el/releases/download/v0.1.16/el-macos-arm64.tar.gz"
  sha256 "8cff3d8384341176cde9fcc1182e3abb25239a144fd160af59ebe76b72f6b8a8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
