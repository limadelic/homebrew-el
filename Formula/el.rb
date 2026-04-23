class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.45"

  url "https://github.com/limadelic/el/releases/download/v0.1.45/el-0.1.45.tar.gz"
  sha256 "4db245173c6ca8a541f3b641f887c5fb0a96d859704cf89de37ecbe6a367fd93"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
