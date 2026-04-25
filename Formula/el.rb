class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.77"

  url "https://github.com/limadelic/el/releases/download/v0.1.77/el-0.1.77.tar.gz"
  sha256 "f74c7ca8515063cf8139b47ce6402b4ba4f3a8e4e287dd2bf84e883f1388171a"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "el", shell_output("#{bin}/el 2>&1", 0)
  end
end
