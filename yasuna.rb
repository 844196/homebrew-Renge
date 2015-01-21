require "formula"

class Yasuna < Formula
    homepage "https://github.com/sasairc/yasuna"
    url "https://github.com/sasairc/yasuna/archive/79d0d16265b3539a8c991d43744e128ea430f31b.zip"
    sha256 "c26cd41f3299eaa14a5af108f1f285b6f80727e0c258e043021f22ea7efe3a02"
    head "https://github.com/sasairc/yasuna.git"
    version "0.1"

    def install
        system "make"
        system "make", "install", "PREFIX=#{prefix}"
    end
end
