class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.50"

  url "https://github.com/limadelic/el/releases/download/v0.1.50/el-0.1.50.tar.gz"
  sha256 "1351ae8dbe35c16f2daeca29b937d9eb48bd51120857828d644eb7692bea0cc2"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
