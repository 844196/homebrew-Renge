require "formula"

class Yasuna < Formula
    homepage "https://github.com/sasairc/yasuna"
    url "http://ssiserver.moe.hm/debian/yasuna_0.3.4-1.tar.gz"
    sha256 "25df667f121a03edab3e8067cd2f1c1b7eb9cc6d3b29c0283ae2add410b30411"
    version "0.3.4"

    def install
        system "make", "PREFIX=#{prefix}"
        system "make", "install", "PREFIX=#{prefix}"
    end
end
