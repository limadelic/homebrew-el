class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.79"

  url "https://github.com/limadelic/el/releases/download/v0.1.79/el-0.1.79.tar.gz"
  sha256 "88a59b14e1e733cf324554679eb5b1fbe5e012f2381d3e402f529bc4c32d3571"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "el", shell_output("#{bin}/el 2>&1", 0)
  end
end
