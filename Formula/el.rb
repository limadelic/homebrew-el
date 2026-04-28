class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.92"

  url "https://github.com/limadelic/el/releases/download/v0.1.92/el-0.1.92.tar.gz"
  sha256 "7efce5a88378b36526cdd7a55fe3aa31f2d6e6f4b4733749ac037e36ff184ce7"

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
