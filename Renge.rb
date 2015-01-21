require "formula"

class Renge < Formula
    homepage "https://github.com/844196/Renge"
    url "https://github.com/844196/Renge/archive/v0.6.tar.gz"
    sha256 "17460aec341f140d4b50614d8d42c769f3f3675f9a504c85c6cf430752b81cf1"
    head "https://github.com/844196/Renge.git"
    version "0.6"

    def install
        system "make", "install", "PREFIX=#{prefix}"
    end
end
