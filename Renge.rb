require "formula"

class Renge < Formula
    homepage "https://github.com/844196/Renge"
    url "https://api.github.com/repos/844196/Renge/tarball/v1.2.2"
    sha256 "4f9d4d86cfa150e5a2d205b31d555c5f67083c21739c379b4795f310400b85ce"
    head "https://github.com/844196/Renge.git"
    version "1.2.2"

    def install
        system "make", "install", "PREFIX=#{prefix}"
    end
end
