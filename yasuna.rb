require "formula"

class Yasuna < Formula
    homepage "https://github.com/sasairc/yasuna"
    url "http://ssiserver.moe.hm/debian/yasuna_0.3-1.tar.gz"
    sha256 "b377a566c6362ea53c875f9d287b5f27b78744c88208db4cfda6cca64c69cd7c"
    version "0.3"

    def install
        system "make", "PREFIX=#{prefix}"
        system "make", "install", "PREFIX=#{prefix}", "BINDIR=#{prefix}/bin"
    end
end
