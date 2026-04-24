class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.63"

  url "https://github.com/limadelic/el/releases/download/v0.1.63/el-0.1.63.tar.gz"
  sha256 "7423e176f8b4cdac0d1334edb76a3eaffc50c8e895447127f158a70927c5a1d9"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
