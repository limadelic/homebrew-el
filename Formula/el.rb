class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.17"

  url "https://github.com/limadelic/el/releases/download/v0.1.17/el_macos_arm64"
  sha256 "4476fa675e9728f858ec5236c00dee0db2ad2176360bfab28b3f75d3aa0b32f7"

  def install
    bin.install "el_macos_arm64" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
