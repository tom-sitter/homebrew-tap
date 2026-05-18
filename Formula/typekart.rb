class Typekart < Formula
  desc "Terminal typing racer with kart-style item effects"
  homepage "https://github.com/tom-sitter/typekart"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tom-sitter/typekart/releases/download/v0.1.3/typekart-aarch64-apple-darwin.tar.gz"
      sha256 "997ad15a4676c076ab975aa6dcf38ca173b5c8969f643b52d0dcbcd99263b827"
    else
      url "https://github.com/tom-sitter/typekart/releases/download/v0.1.3/typekart-x86_64-apple-darwin.tar.gz"
      sha256 "d588ef3b0ab118c2ead638f9ffe333e31a8e24c3b241dd22b8e22b4a9ad30106"
    end
  end

  def install
    bin.install "typekart"
  end

  test do
    assert_match "A terminal typing racer", shell_output("#{bin}/typekart --help")
  end
end
