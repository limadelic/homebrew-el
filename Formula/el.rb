class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.48"

  url "https://github.com/limadelic/el/releases/download/v0.1.48/el-0.1.48.tar.gz"
  sha256 "80625f3d2ef3066043300f678853c8968459fa305b4f33831ac773d29bccdd20"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
