class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.103"

  url "https://github.com/limadelic/el/releases/download/v0.1.103/el-0.1.103.tar.gz"
  sha256 "6e3f20e0b9b93c0b8cd8485ac12179449bc9c9d98db2cb64d329b7a4fe4f7fb2"

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
