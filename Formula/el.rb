class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/limadelic/el/releases/download/v0.1.1/el_macos_arm64"
      sha256 "dab50a8904fdc575eee46282590d73e057bfc6c42982d9e2b44e8c9afc145038"
    end
    on_intel do
      url "https://github.com/limadelic/el/releases/download/v0.1.1/el_macos_x86_64"
      sha256 "9c20a86cae985d3096ea86cb508a0f6626506f9ab33e07451848111bb7459232"
    end
  end

  def install
    binary = Hardware::CPU.arm? ? "el_macos_arm64" : "el_macos_x86_64"
    bin.install binary => "el"
  end

  test do
    output = shell_output("#{bin}/el ls")
    assert_match "Session", output
  end
end
