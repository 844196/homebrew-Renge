require "formula"

class Yasuna < Formula
    homepage "https://github.com/sasairc/yasuna"
    url "http://ssiserver.moe.hm/debian/yasuna_0.3-2.tar.gz"
    sha256 "f284d45e01ad0496bde2e626f7b9f2a715228145acabcb5d33eb6173fb87d0f5"
    version "0.3"

    def install
        system "make", "PREFIX=#{prefix}"
        system "make", "install", "PREFIX=#{prefix}"
    end
end
