class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.75"

  url "https://github.com/limadelic/el/releases/download/v0.1.75/el-0.1.75.tar.gz"
  sha256 "160322d10187214f8518600e8f8bd4f9aeaee00f2c1dbaebcdafe6ade5239d02"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "el", shell_output("#{bin}/el 2>&1", 0)
  end
end
