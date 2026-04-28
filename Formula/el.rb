class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.98"

  url "https://github.com/limadelic/el/releases/download/v0.1.98/el-0.1.98.tar.gz"
  sha256 "aa638f1ec89d55707202d024efaedbffc027606e630aa8463b845bd14f79a47c"

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
