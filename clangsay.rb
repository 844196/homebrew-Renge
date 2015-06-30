require "formula"

class Clangsay < Formula
    homepage "https://github.com/sasairc/clangsay"
    url "https://api.github.com/repos/sasairc/clangsay/tarball/v1.3.1"
    sha256 "f98aee8e104fdf3f3ef7583838712ecc8cddc97e6f75fcfc53e8ebd5a3296184"
    version "1.3.2"

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
