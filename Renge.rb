require "formula"

class Renge < Formula
    homepage "https://github.com/844196/Renge"
    url "https://github.com/844196/Renge/archive/v1.0.tar.gz"
    sha256 "3e1df444c38e8812fe683b47d061fa21bcc07c54708b8f6c6ad39e47cd0c4782"
    head "https://github.com/844196/Renge.git"
    version "1.0"

    def install
        system "make", "install", "PREFIX=#{prefix}"
    end
end
