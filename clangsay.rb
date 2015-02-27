require "formula"

class Clangsay < Formula
    homepage "https://github.com/sasairc/clangsay"
    url "https://github.com/sasairc/clangsay/archive/v0.0.4.tar.gz"
    sha256 "316883b32c4db90d97a0a37b3e8a2006ae4eb24ea71f6a054e0ea7b09c105cc8"
    version "0.0.4"

    depends_on "cowsay"

    def install
        system "make", "PREFIX=#{prefix}"
        system "make", "install", "PREFIX=#{prefix}"
    end
end
