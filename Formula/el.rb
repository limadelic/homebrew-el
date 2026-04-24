class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.61"

  url "https://github.com/limadelic/el/releases/download/v0.1.61/el-0.1.61.tar.gz"
  sha256 "00b18ce94938a111356a1620dac56b0b3781ebb2b8683825760247f9574c89d0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
