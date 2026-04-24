class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.55"

  url "https://github.com/limadelic/el/releases/download/v0.1.55/el-0.1.55.tar.gz"
  sha256 "33227b20548279d60ba21e71edf188c4339d1043ef0f91731ca759e3caead4ba"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
