class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.59"

  url "https://github.com/limadelic/el/releases/download/v0.1.59/el-0.1.59.tar.gz"
  sha256 "2bf01e4379d077aee866c2ccc01eac5710f3ca3878c3b89b1b9645014a1a70b5"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
