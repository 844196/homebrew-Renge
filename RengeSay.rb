require "formula"

class Rengesay < Formula
    homepage "https://github.com/844196/RengeSay"
    url "https://github.com/844196/RengeSay/archive/v1.0.tar.gz"
    sha256 "b3655ac64dfeb82f9a5128b2fbfda851c874d4e3f32802b45384307c04c1d968"
    head "https://github.com/844196/RengeSay.git"
    version "1.0"

    def install
        system "make", "install", "PREFIX=#{prefix}"
    end
end
