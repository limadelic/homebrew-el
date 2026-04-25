class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.80"

  url "https://github.com/limadelic/el/releases/download/v0.1.80/el-0.1.80.tar.gz"
  sha256 "aafa805a1be09d2daa8ca028b1183edcc26d95fc67ba7c001f23ea9bd991af29"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "el", shell_output("#{bin}/el 2>&1", 0)
  end
end
