require "formula"

class Yasuna < Formula
    homepage "https://github.com/sasairc/yasuna"
    url "https://github.com/sasairc/yasuna/archive/v0.3.8.tar.gz"
    sha256 "381563832e751041e6eb06b85e165c86c40d3e5d37d8d85e5e8eb6c34d78f099"
    version "0.3.8"

    def install
        system "make", "PREFIX=#{prefix}"
        system "make", "install", "PREFIX=#{prefix}"
    end
end
