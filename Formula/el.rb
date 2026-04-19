class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.10"

  if Hardware::CPU.arm?
    url "https://github.com/limadelic/el/releases/download/v0.1.10/el_macos_arm64"
    sha256 "a67caf88ec633323aa7f6eacda8e8f1fc7057dc82b2366273c88d48baedae96f"
  else
    url "https://github.com/limadelic/el/releases/download/v0.1.10/el_macos_x86_64"
    sha256 "529597bf68bfedc5d7de01423c4fbd153fa863b06321e6c8b7ab42b84017a43e"
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
