class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.40"

  url "https://github.com/limadelic/el/releases/download/v0.1.40/el"
  sha256 "ebc3d37c340b26953decda3fb1534e1881f84be1bf20e3147ab94738986f527a"

  def install
    bin.install "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
