class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.90"

  url "https://github.com/limadelic/el/releases/download/v0.1.90/el-0.1.90.tar.gz"
  sha256 "2ba55dc23073b62e4a1c4724be0ee56a4ccef9736f5932988e37b2a584fa4057"

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
