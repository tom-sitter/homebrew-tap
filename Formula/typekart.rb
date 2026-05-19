class Typekart < Formula
  desc "Terminal typing racer with kart-style item effects"
  homepage "https://github.com/tom-sitter/typekart"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tom-sitter/typekart/releases/download/v0.1.5/typekart-aarch64-apple-darwin.tar.gz"
      sha256 "0d1ce06095a3a8c49ed95e9a2b96cb856a0329a49ba93dc39ce2e40be1f6b332"
    else
      url "https://github.com/tom-sitter/typekart/releases/download/v0.1.5/typekart-x86_64-apple-darwin.tar.gz"
      sha256 "080c84b4ad222f6c478d5a9dfebfe963216accccb97e4585d38903d1840613c7"
    end
  end

  def install
    bin.install "typekart"
  end

  test do
    assert_match "A terminal typing racer", shell_output("#{bin}/typekart --help")
  end
end
