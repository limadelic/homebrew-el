class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.42"

  url "https://github.com/limadelic/el/releases/download/v0.1.42/el"
  sha256 "e8766704183b404d91924ed804bcba8a3579915d724a8d73d597de215992f829"

  def install
    bin.install "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
