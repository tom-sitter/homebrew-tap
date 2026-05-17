class Typekart < Formula
  desc "Terminal typing racer with kart-style item effects"
  homepage "https://github.com/tom-sitter/typekart"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tom-sitter/typekart/releases/download/v0.1.0/typekart-aarch64-apple-darwin.tar.gz"
      sha256 "c1f88ae09f5ec5fa4c99f0f42378a6f8ff06caee91ca95305ea8d66954f821e1"
    else
      url "https://github.com/tom-sitter/typekart/releases/download/v0.1.0/typekart-x86_64-apple-darwin.tar.gz"
      sha256 "669538dba05913989d837fc965925970cdad4ad9831f2d015045704d5ddb4b5c"
    end
  end

  def install
    bin.install "typekart"
  end

  test do
    assert_match "A terminal typing racer", shell_output("#{bin}/typekart --help")
  end
end
