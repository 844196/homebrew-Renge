require "formula"

class Renge < Formula
    homepage "https://github.com/844196/Renge"
    url "https://github.com/844196/Renge/archive/v0.9.tar.gz"
    sha256 "5c5111377f27684020a3348d43ce4e9f7bad06e1c356d322bfe29a523aeec9a5"
    head "https://github.com/844196/Renge.git"
    version "0.9"

    def install
        system "make", "install", "PREFIX=#{prefix}"
    end
end
