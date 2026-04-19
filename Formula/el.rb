class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.2.0"

  if Hardware::CPU.arm?
    url "https://github.com/limadelic/el/releases/download/v0.2.0/el_macos_arm64"
    sha256 "f3202c396d084c50ed1b363fd730d61cffdfbac6fa7a49714ba1d42e8f154184"
  else
    url "https://github.com/limadelic/el/releases/download/v0.2.0/el_macos_x86_64"
    sha256 "5fe44bf28d6d741075cb4ccf4f7d0be1c9460f85b956b27266531e2fce86c4c7"
  end

  def install
    if Hardware::CPU.arm?
      bin.install "el_macos_arm64" => "el"
    else
      bin.install "el_macos_x86_64" => "el"
    end
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
