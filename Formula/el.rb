class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.15"

  url "https://github.com/limadelic/el/releases/download/v0.1.15/el_macos_arm64"
  sha256 "72f5e1374de468e2a7faa9ffa9dff91f01efd95de14bf3c7c6de07650426e70a"

  def install
    bin.install "el_macos_arm64" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
