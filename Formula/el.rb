class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.16"

  url "https://github.com/limadelic/el/releases/download/v0.1.16/el_macos_arm64"
  sha256 "5af24e2dd922a3907ce8f2cfaa5f2712700a3db0b097cb297bca9317743ef008"

  def install
    bin.install "el_macos_arm64" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
