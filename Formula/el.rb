class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.97"

  url "https://github.com/limadelic/el/releases/download/v0.1.97/el-0.1.97.tar.gz"
  sha256 "774266bcec3568970e243d94c36c2ea6e44734c8e89238b7846cacf79847034d"

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
