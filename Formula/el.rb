class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.95"

  url "https://github.com/limadelic/el/releases/download/v0.1.95/el-0.1.95.tar.gz"
  sha256 "ce13779f8455edab766f1fa39da2778e8488873a441b7f8451e5ff407a7455b7"

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
