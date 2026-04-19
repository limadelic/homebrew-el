class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/limadelic/el/releases/download/v0.1.3/el_macos_arm64"
      sha256 "feba93f8fc0e6f5ac949ca7fa321bef162e4f3b5c912d0a5972c9904339a24d7"
    end
    on_intel do
      url "https://github.com/limadelic/el/releases/download/v0.1.3/el_macos_x86_64"
      sha256 "5ea65cb06c248a7ec3199d8d1927387f472f15364f2cac2691407bc4aa91076b"
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
