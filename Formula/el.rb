class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.51"

  url "https://github.com/limadelic/el/releases/download/v0.1.51/el-0.1.51.tar.gz"
  sha256 "2bab71a0dd2273ac6ff87098548b9daa75ef1beb347332c51caa75491dabb66e"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
