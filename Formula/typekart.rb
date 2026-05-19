class Typekart < Formula
  desc "Terminal typing racer with kart-style item effects"
  homepage "https://github.com/tom-sitter/typekart"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tom-sitter/typekart/releases/download/v0.1.4/typekart-aarch64-apple-darwin.tar.gz"
      sha256 "89e7787cbb85fad4bab94dd1181a7af4d97375ce7ffb08ced24460e46e5b8688"
    else
      url "https://github.com/tom-sitter/typekart/releases/download/v0.1.4/typekart-x86_64-apple-darwin.tar.gz"
      sha256 "e81d5b2d8b698061aa916510a707f322dbdf8883c0d926a8dbe1d23d3d6fe3a5"
    end
  end

  def install
    bin.install "typekart"
  end

  test do
    assert_match "A terminal typing racer", shell_output("#{bin}/typekart --help")
  end
end
