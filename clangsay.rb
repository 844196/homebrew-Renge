require "formula"

class Clangsay < Formula
    homepage "https://github.com/sasairc/clangsay"
    url "https://api.github.com/repos/sasairc/clangsay/tarball/v1.4.0"
    sha256 "36c209781ca97baf71f3de9a85a893d07b252c403862ba1f15ab3a48f4f2dd27"
    version "1.4.0"

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
