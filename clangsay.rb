require "formula"

class Clangsay < Formula
    homepage "https://github.com/sasairc/clangsay"
    url "https://github.com/sasairc/clangsay/archive/v0.0.5.tar.gz"
    sha256 "35bd8c0eb61be8b26482b682ddaa4fc51f56bf644222a996bccd74613b1330a3"
    version "0.0.5"

    option "zsh-completion", "Install zsh completion"

    depends_on "cowsay"
    depends_on "pkg-config"
    depends_on "glib"

    def install
        system "make", "PREFIX=#{prefix}", "COWPATH=#{HOMEBREW_PREFIX}/share/cows"
        system "make", "install", "PREFIX=#{prefix}", "COWPATH=#{HOMEBREW_PREFIX}/share/cows"

        if build.include?('zsh-completion')
            prefix.install "_clangsay"
            zsh_completion.install "#{prefix}/_clangsay"
        end
    end
end
