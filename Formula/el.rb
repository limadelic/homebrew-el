class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.74"

  url "https://github.com/limadelic/el/releases/download/v0.1.74/el-0.1.74.tar.gz"
  sha256 "c7f6595da4a218d9e2db0d341381c9b808e114d6a8949573531021a8fd6d5277"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "el", shell_output("#{bin}/el 2>&1", 0)
  end
end
