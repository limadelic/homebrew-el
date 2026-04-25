class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.82"

  url "https://github.com/limadelic/el/releases/download/v0.1.82/el-0.1.82.tar.gz"
  sha256 "4c1acf8c1ab70513f8ab8992ccae48d0e308c1d14496ff9071c1e7a4ad3bea85"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  def post_install
    quiet_system libexec/"bin/el", "stop"
  end

  test do
    assert_match "el", shell_output("#{bin}/el 2>&1", 0)
  end
end
