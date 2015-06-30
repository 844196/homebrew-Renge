require "formula"

class Yasuna < Formula
    homepage "https://github.com/sasairc/yasuna"
    url "https://api.github.com/repos/sasairc/yasuna/tarball/v7.2.1"
    sha256 "e28801de8fc567e17f76c0d3e22bfaf2961c10ee1143aebd99f716992d29502f"
    version "7.2.1"

    def install
        system "make", "PREFIX=#{prefix}"
        system "make", "install", "PREFIX=#{prefix}"
    end
end
