require "formula"

class Yasuna < Formula
    homepage "https://github.com/sasairc/yasuna"
    url "https://github.com/sasairc/yasuna/archive/v0.3.10.tar.gz"
    sha256 "e4d42212e2172e8459dc6b32c302ce5fac2a10c50f73843e4005e77022fe4182"
    version "0.3.10"

    def install
        system "make", "PREFIX=#{prefix}"
        system "make", "install", "PREFIX=#{prefix}"
    end
end
