class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/limadelic/el/releases/download/v0.1.5/el_macos_arm64"
      sha256 "208e64690b63bdb094344e689840eded92094d32a953d12e9e27747dcff91002"
    end
    on_intel do
      url "https://github.com/limadelic/el/releases/download/v0.1.5/el_macos_x86_64"
      sha256 "5e89a1e71ecaf44978cd34eb30346f241d604d552dd80151cbf2fb86ade3159f"
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
