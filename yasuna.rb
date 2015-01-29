require "formula"

class Yasuna < Formula
    homepage "https://github.com/sasairc/yasuna"
    url "https://github.com/sasairc/yasuna/archive/v0.3.6.tar.gz"
    sha256 "9e78255db0fcbdddc08a0b74e5b53d3db9265f4273aa10a6f628097947d4b567"
    version "0.3.6"

    def install
        system "make", "PREFIX=#{prefix}"
        system "make", "install", "PREFIX=#{prefix}"
    end
end
