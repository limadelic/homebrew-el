class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.78"

  url "https://github.com/limadelic/el/releases/download/v0.1.78/el-0.1.78.tar.gz"
  sha256 "b9f645d9a0f97e017e668d6efeec43e7cd7884803e1b7a1b2994486c18e622bf"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "el", shell_output("#{bin}/el 2>&1", 0)
  end
end
