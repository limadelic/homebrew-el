class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.8"

  on_macos do
    on_arm do
      url "https://github.com/limadelic/el/releases/download/v0.1.8/el_macos_arm64"
      sha256 "acbd29fb3ece73703f6b445d39eb08f430fe1358b00920e83d3fe1afcbf0172e"
    end
    on_intel do
      url "https://github.com/limadelic/el/releases/download/v0.1.8/el_macos_x86_64"
      sha256 "dec684c41821bf5440df34f220fb805a9ce05c463c5ff6e1e33f7e6677b66837"
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

  livecheck do
    url "https://github.com/limadelic/el/releases"
    regex(/v(\d+(?:\.\d+)*)/i)
    strategy :github_latest
  end
end
