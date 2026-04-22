class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.40"

  url "https://github.com/limadelic/el/archive/refs/tags/v0.1.40.tar.gz"
  sha256 "b748c60067c5fba5152f2acbdc67c8bf8b846f07e9d98062d8b5da293291c9bf"

  depends_on "elixir"
  depends_on "erlang"

  def install
    system "mix", "local.hex", "--force"
    system "mix", "local.rebar", "--force"
    system "mix", "deps.get"
    system "mix", "escript.build"
    bin.install "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
