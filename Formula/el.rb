class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.58"

  url "https://github.com/limadelic/el/releases/download/v0.1.58/el-0.1.58.tar.gz"
  sha256 "e132561e045ebc07a21c250372941ff309ce2b83fe4fa190b8d87b51e98a7df1"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
