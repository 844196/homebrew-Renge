require "formula"

class Renge < Formula
    homepage "https://github.com/844196/Renge"
    url "https://github.com/844196/Renge/archive/v0.7.tar.gz"
    sha256 "4e9af82797fb020b876b391f67c3d9c5825ba2c47c947093681ddeeee6f0daf1"
    head "https://github.com/844196/Renge.git"
    version "0.7"

    def install
        system "make", "install", "PREFIX=#{prefix}"
    end
end
