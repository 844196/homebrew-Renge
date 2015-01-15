require "formula"

class Renge < Formula
    homepage "https://github.com/844196/Renge"
    url "https://github.com/844196/Renge/archive/v0.1.tar.gz"
    sha256 "64438e59f82f9759ee41619cb8b8294732c37ba1a24e8fd52f5aa4a2a21ad15f"
    head "https://github.com/844196/Renge.git"
    version "0.1"

    def install
        bin.install "fortunerenge"
        prefix.install "renge-quotes"
        bin.install_symlink "#{prefix}/renge-quotes" => "renge-quotes"
    end
end
