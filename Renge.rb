require "formula"

class Renge < Formula
    homepage "https://github.com/844196/Renge"
    url "https://github.com/844196/Renge/archive/v0.3.tar.gz"
    sha256 "ddfadd506b45bd4105a799ba18c5bc26531297b2c2fe4afed5dba09f2609339c"
    head "https://github.com/844196/Renge.git"
    version "0.3"

    def install
        bin.install "renge"
        prefix.install "renge-quotes"
        bin.install_symlink "#{prefix}/renge-quotes" => "renge-quotes"
    end
end
