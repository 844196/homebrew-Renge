require "formula"

class Clangsay < Formula
    homepage "https://github.com/sasairc/clangsay"
    url "https://github.com/sasairc/clangsay/archive/v0.0.6.tar.gz"
    sha256 "5dc5aa574967e99efc684f2604107e6009a2c5d64164b2e20da638959bb7a2ba"
    version "0.0.6"

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
