class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.16"

  url "https://github.com/limadelic/el/releases/download/v0.1.16/el_macos_arm64"
  sha256 "88d60228d0f6106d1ab5b21c2babacc107dfb592f005320ca24aa5b752b7ff12"

  def install
    bin.install "el_macos_arm64" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
