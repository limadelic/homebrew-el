class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.85"

  url "https://github.com/limadelic/el/releases/download/v0.1.85/el-0.1.85.tar.gz"
  sha256 "0851c75b2e4172b7308dea2edb13565501eafbd33440af7d3cefa78b5781c5cd"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  def post_install
    quiet_system libexec/"bin/el", "stop"
  end

  test do
    assert_match "el", shell_output("#{bin}/el 2>&1", 0)
  end
end
