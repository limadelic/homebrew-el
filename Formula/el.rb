class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.64"

  url "https://github.com/limadelic/el/releases/download/v0.1.64/el-0.1.64.tar.gz"
  sha256 "3a10518c51c6caf412221b835ea0a6c141d4688dc794f3e39ac4c643d01015b9"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
