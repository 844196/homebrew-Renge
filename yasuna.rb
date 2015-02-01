require "formula"

class Yasuna < Formula
    homepage "https://github.com/sasairc/yasuna"
    url "https://github.com/sasairc/yasuna/archive/v0.3.7.tar.gz"
    sha256 "591474dcaf4ffdf6ed535b586814521c87df874ce1520a297cc151329d4a1442"
    version "0.3.7"

    def install
        system "make", "PREFIX=#{prefix}"
        system "make", "install", "PREFIX=#{prefix}"
    end
end
