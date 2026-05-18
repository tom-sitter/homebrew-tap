class Typekart < Formula
  desc "Terminal typing racer with kart-style item effects"
  homepage "https://github.com/tom-sitter/typekart"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tom-sitter/typekart/releases/download/v0.1.2/typekart-aarch64-apple-darwin.tar.gz"
      sha256 "daae8457e95356fb9ca43e4ded65543f67d3966fcc380838231653c32921a800"
    else
      url "https://github.com/tom-sitter/typekart/releases/download/v0.1.2/typekart-x86_64-apple-darwin.tar.gz"
      sha256 "92dc1cddab9b4b7536fffe9bcaf84c48a394c5fb9b5673b7fc8834f0e22a7281"
    end
  end

  def install
    bin.install "typekart"
  end

  test do
    assert_match "A terminal typing racer", shell_output("#{bin}/typekart --help")
  end
end
