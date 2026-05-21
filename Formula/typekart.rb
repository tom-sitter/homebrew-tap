class Typekart < Formula
  desc "Terminal typing racer with kart-style item effects"
  homepage "https://github.com/tom-sitter/typekart"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tom-sitter/typekart/releases/download/v0.1.6/typekart-aarch64-apple-darwin.tar.gz"
      sha256 "bbcb2317bc82fb6e36ecf33e216e9d8c2f7aef85cc4bc85232357d19cc724266"
    else
      url "https://github.com/tom-sitter/typekart/releases/download/v0.1.6/typekart-x86_64-apple-darwin.tar.gz"
      sha256 "6532f68e5bf59fd20c53485adf996f82840fcacef3e7fb6c9b318e5d0465a7fa"
    end
  end

  def install
    bin.install "typekart"
  end

  test do
    assert_match "A terminal typing racer", shell_output("#{bin}/typekart --help")
  end
end
