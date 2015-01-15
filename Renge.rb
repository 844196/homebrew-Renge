require "formula"

class Renge < Formula
    homepage "https://github.com/844196/Renge"
    url "https://github.com/844196/Renge/archive/v0.2.tar.gz"
    sha256 "baef2c7074d9c7649fef5dc56e32a66be9b78a313ced4fa27ffaf76813f59f1f"
    head "https://github.com/844196/Renge.git"
    version "0.2"

    def install
        bin.install "renge"
        prefix.install "renge-quotes"
        bin.install_symlink "#{prefix}/renge-quotes" => "renge-quotes"
    end
end
