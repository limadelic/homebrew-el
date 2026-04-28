class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.96"

  url "https://github.com/limadelic/el/releases/download/v0.1.96/el-0.1.96.tar.gz"
  sha256 "341af79de614762d999a0f917574073bb515e7fac21b94973f2fb6b9810f2e95"

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
