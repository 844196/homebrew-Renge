require "formula"

class Renge < Formula
    homepage "https://github.com/844196/Renge"
    url "https://github.com/844196/Renge/archive/v0.4.tar.gz"
    sha256 "b59056d34853b335796051e59b036d3dd8e3664409601d01eaeec7d42d25e370"
    head "https://github.com/844196/Renge.git"
    version "0.4"

    def install
        system "make", "install", "PREFIX=#{prefix}"
    end
end
