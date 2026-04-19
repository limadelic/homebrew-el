class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/limadelic/el/releases/download/v0.1.4/el_macos_arm64"
      sha256 "6a8157964e6f63565588db585b1b47eb0f6a8aa6ce08be64f288bd08822c6a1d"
    end
    on_intel do
      url "https://github.com/limadelic/el/releases/download/v0.1.4/el_macos_x86_64"
      sha256 "58d0ec5c3936eebc100c65bcd22182cc516a2df17db7f28c976d9adfc7973fd9"
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
