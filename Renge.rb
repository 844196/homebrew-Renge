require "formula"

class Renge < Formula
    homepage "https://github.com/844196/Renge"
    url "https://github.com/844196/Renge/archive/v0.8.tar.gz"
    sha256 "2c02399d02346095c0aae9c27e839d5c52d13426f8d8da1ad19242bdaf88a641"
    head "https://github.com/844196/Renge.git"
    version "0.8"

    def install
        system "make", "install", "PREFIX=#{prefix}"
    end
end
