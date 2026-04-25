class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.76"

  url "https://github.com/limadelic/el/releases/download/v0.1.76/el-0.1.76.tar.gz"
  sha256 "e3e18270fbdc3a334c170c6d3bed98ed50df28ab003523514d81d41edbf6635f"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "el", shell_output("#{bin}/el 2>&1", 0)
  end
end
