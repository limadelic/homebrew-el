class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.73"

  url "https://github.com/limadelic/el/releases/download/v0.1.73/el-0.1.73.tar.gz"
  sha256 "2b641683b5378842968602787214ac16b17ff93aeb4c8beb3e279f20ed321216"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "el", shell_output("#{bin}/el 2>&1", 0)
  end
end
