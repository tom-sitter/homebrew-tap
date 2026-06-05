class Typekart < Formula
  desc "Terminal typing racer with kart-style item effects"
  homepage "https://github.com/tom-sitter/typekart"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tom-sitter/typekart/releases/download/v0.1.7/typekart-aarch64-apple-darwin.tar.gz"
      sha256 "8436bef257dce5d1e7a771371b791312a0a79ceb1ce7e99ab06742f863a7384e"
    else
      url "https://github.com/tom-sitter/typekart/releases/download/v0.1.7/typekart-x86_64-apple-darwin.tar.gz"
      sha256 "547f3121f0b99b52d748967afc36a6f17085c43ac740a16f54641c79ac991bca"
    end
  end

  def install
    bin.install "typekart"
  end

  test do
    assert_match "A terminal typing racer", shell_output("#{bin}/typekart --help")
  end
end
