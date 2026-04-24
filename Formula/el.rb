class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.52"

  url "https://github.com/limadelic/el/releases/download/v0.1.52/el-0.1.52.tar.gz"
  sha256 "4443deb4506b4e3fd52ea4d7f5db9d193624c4c6e39dcfd7c859d7bf00e11a52"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
