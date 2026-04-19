class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.10"

  url "https://github.com/limadelic/el/releases/download/v0.1.10/el_macos_arm64"
  sha256 "4123c15991e9fa4f309ae0715f699b25ec0f6f4beb8a8458adcdb1aad799f57c"

  def install
    bin.install "el_macos_arm64" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
