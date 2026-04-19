class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.14"

  on_macos do
    on_arm do
      url "https://github.com/limadelic/el/releases/download/v0.1.14/el_macos_arm64"
      sha256 "e81b56901386fadceef5dd82756c01b8b6ffac82a933f5f4f2377b67a3cf5313"
    end
    on_intel do
      url "https://github.com/limadelic/el/releases/download/v0.1.14/el_macos_x86_64"
      sha256 "529597bf68bfedc5d7de01423c4fbd153fa863b06321e6c8b7ab42b84017a43e"
    end
  end

  def install
    bin.install "el_macos_#{arch}" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
