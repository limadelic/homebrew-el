class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.29"

  url "https://github.com/limadelic/el/releases/download/v0.1.29/el_macos_arm64"
  sha256 "6fc0f6a9edf01dc4307cccedab671fd6193f71a0233e427085799531e41778eb"

  def install
    bin.install "el_macos_arm64" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
