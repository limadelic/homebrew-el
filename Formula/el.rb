class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.66"

  url "https://github.com/limadelic/el/releases/download/v0.1.66/el-0.1.66.tar.gz"
  sha256 "626fbd8ebf52ab15b7d2534be2e9a3db74e866632722dbbc4e014eeef1bf0f66"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "el", shell_output("#{bin}/el 2>&1", 0)
  end
end
