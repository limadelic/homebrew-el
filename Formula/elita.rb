class Elita < Formula
  desc "Agentic platform with el CLI"
  homepage "https://github.com/limadelic/elita"
  url "https://github.com/limadelic/elita/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "0ba7772b0ba82195293f8bcc7721e592266a3bcdbc7612121dc9d4783b9c3249"
  license "MIT"

  depends_on "elixir"

  def install
    ENV["MIX_ENV"] = "prod"
    ENV["MIX_HOME"] = buildpath/".mix"
    ENV["HEX_HOME"] = buildpath/".hex"
    system "mix", "local.hex", "--force"
    system "mix", "local.rebar", "--force"
    system "mix", "deps.get"
    system "mix", "build"
    libexec.install "apps/el/el"
    pkgshare.install "apps/elita/agents"
    (bin/"el").write <<~SH
      #!/bin/bash
      export ELITA_HOME="#{pkgshare}"
      exec "#{libexec}/el" "$@"
    SH
    (bin/"el").chmod 0755
  end

  test do
    system bin/"el", "help"
  end
end
