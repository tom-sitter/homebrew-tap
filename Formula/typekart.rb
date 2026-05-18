class Typekart < Formula
  desc "Terminal typing racer with kart-style item effects"
  homepage "https://github.com/tom-sitter/typekart"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tom-sitter/typekart/releases/download/v0.1.1/typekart-aarch64-apple-darwin.tar.gz"
      sha256 "7013c1d8fd94e87b06003a3613e31b6d49386caef61d60f81467e735f4d72ba1"
    else
      url "https://github.com/tom-sitter/typekart/releases/download/v0.1.1/typekart-x86_64-apple-darwin.tar.gz"
      sha256 "aa4d4e5dac077cf40781e3f13754a653c9cf5d3610e7590c7ad453ffd6b72e1e"
    end
  end

  def install
    bin.install "typekart"
  end

  test do
    assert_match "A terminal typing racer", shell_output("#{bin}/typekart --help")
  end
end
