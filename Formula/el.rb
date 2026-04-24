class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.56"

  url "https://github.com/limadelic/el/releases/download/v0.1.56/el-0.1.56.tar.gz"
  sha256 "1faed605b29f528ab869b21dfc01942be21c6ffdf354e1bc5cb168fae80f0ad0"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
