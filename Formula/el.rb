class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.53"

  url "https://github.com/limadelic/el/releases/download/v0.1.53/el-0.1.53.tar.gz"
  sha256 "8f8f5f32950382a00a4c3ca6c0c0133dc24897a5bdd59b18600555bb7e4b18a8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
