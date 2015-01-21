require "formula"

class Yasuna < Formula
    homepage "https://github.com/sasairc/yasuna"
    url "http://ssiserver.moe.hm/debian/yasuna_0.1-1.tar.gz"
    sha256 "d46c6fd84ce3553b08cf56d468d7480296e8cd3761f4db456c07c95c8cecea21"
    version "0.1"

    def install
        system "make", "PREFIX=#{prefix}"
        system "make", "install", "PREFIX=#{prefix}"
    end
end
