require "formula"

class Clangsay < Formula
    homepage "https://github.com/sasairc/clangsay"
    url "https://github.com/sasairc/clangsay/archive/v0.0.7.tar.gz"
    sha256 "97a2ed91791755cb662fa823b25bfdef091e66dae052ae2ed3bb0b49e7bcfb36"
    version "0.0.7"

    option "zsh-completion", "Install zsh completion"
    option "without-cows", "Without cowfile"

    depends_on "cowsay"
    depends_on "pkg-config"
    depends_on "glib"

    def install
        cowpath = "#{HOMEBREW_PREFIX}" + '/share/cows'

        system "make", "PREFIX=#{prefix}", "COWPATH=#{cowpath}"
        system "make", "install", "PREFIX=#{prefix}"

        if !(build.include?('without-cows'))
            rm "cows/default.cow"
            share.install Dir["cows"]
        end

        if build.include?('zsh-completion')
            prefix.install "_clangsay"
            zsh_completion.install "#{prefix}/_clangsay"
        end
    end
end
