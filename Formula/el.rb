class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.34"

  url "https://github.com/limadelic/el/releases/download/v0.1.34/el_macos_arm64"
  sha256 "241942c8bec2b8a48f5d87364a5a49ea1f775f1c158f791af6053c96bf20f133"

  def install
    bin.install "el_macos_arm64" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
