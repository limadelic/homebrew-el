class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.70"

  url "https://github.com/limadelic/el/releases/download/v0.1.70/el-0.1.70.tar.gz"
  sha256 "0946dcd3f1e953db4951741a33c61234744f654fc090f3cca87867d8011c11a1"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "el", shell_output("#{bin}/el 2>&1", 0)
  end
end
