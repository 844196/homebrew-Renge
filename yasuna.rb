require "formula"

class Yasuna < Formula
    homepage "https://github.com/sasairc/yasuna"
    url "http://ssiserver.moe.hm/debian/yasuna_0.2-1.tar.gz"
    sha256 "3d6a23f4dc7914df407dd0fcb601841abea1002a9b5f1aefa3bbd98dc401af29"
    version "0.2"

    def install
        system "make", "PREFIX=#{prefix}"
        system "make", "install", "PREFIX=#{prefix}"
    end
end
