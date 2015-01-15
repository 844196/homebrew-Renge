require "formula"

class Renge < Formula
    homepage "https://github.com/844196/Renge"
    url "https://github.com/844196/Renge/archive/v0.1.tar.gz"
    sha256 "cc4dfe7e6622788c47691d6f496d822e5c6b85d3fa57eb286d450624827f3374"
    head "https://github.com/844196/Renge.git"
    version "0.1"

    def install
        bin.install "fortunerenge"
        prefix.install "renge-quotes"
        bin.install_symlink "#{prefix}/renge-quotes" => "renge-quotes"
    end
end
