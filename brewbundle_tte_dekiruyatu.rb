require "formula"

class Brewbundle_tte_dekiruyatu < Formula
    homepage "https://github.com/844196/brewbundle_tte_dekiruyatu"
    url "https://github.com/844196/brewbundle_tte_dekiruyatu/archive/v0.1.tar.gz"
    sha256 "20557de165bb92d5b98d6771bf657343f5d7c0c137466b51da8c6b56adf355b8"
    head "https://github.com/844196/brewbundle_tte_dekiruyatu.git"
    version "0.1"

    def install
        bin.install "brew-bundle"
    end
end
