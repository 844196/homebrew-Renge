require "formula"

class Rengesay < Formula
    homepage "https://github.com/844196/RengeSay"
    url "https://github.com/844196/RengeSay/archive/v1.1.tar.gz"
    sha256 "d23cdaa67c7c5c5b7755926cb824a7978806a5912c5d4a336fcf1cf2f36be121"
    head "https://github.com/844196/RengeSay.git"
    version "1.1"

    depends_on "cowsay"

    def install
        system "make", "install", "PREFIX=#{prefix}"
    end
end
