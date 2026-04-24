class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.67"

  url "https://github.com/limadelic/el/releases/download/v0.1.67/el-0.1.67.tar.gz"
  sha256 "f480860deef246bce6c6f3fc480bfd0bb6509854077692ec665334ebfd584f3a"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "el", shell_output("#{bin}/el 2>&1", 0)
  end
end
