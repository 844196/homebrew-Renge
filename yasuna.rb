require "formula"

class Yasuna < Formula
    homepage "https://github.com/sasairc/yasuna"
    url "http://ssiserver.moe.hm/debian/yasuna_0.3.1-1.tar.gz"
    sha256 "653bd49a036b49f5ffa31de5331ab03bc52e863da44fe4d65e6d215464e5410b"
    version "0.3.1"

    def install
        system "make", "PREFIX=#{prefix}"
        system "make", "install", "PREFIX=#{prefix}"
    end
end
