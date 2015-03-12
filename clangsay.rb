require "formula"

class Clangsay < Formula
    homepage "https://github.com/sasairc/clangsay"
    url "https://github.com/sasairc/clangsay/archive/v0.0.5.tar.gz"
    sha256 "35bd8c0eb61be8b26482b682ddaa4fc51f56bf644222a996bccd74613b1330a3"
    version "0.0.5"

    depends_on "cowsay"
    depends_on "pkg-config"
    depends_on "glib"

    option "zsh-completion", "Install zsh completion"

    def install
        system "make", "PREFIX=#{prefix}", "COWPATH=#{HOMEBREW_PREFIX}/share/cows/"
        system "make", "install", "PREFIX=#{prefix}"

        if build.include?('zsh-completion') && ENV.include?('FPATH')
            ENV['FPATH'].split(':').find do |path|
                system "install", "-pm 644", "_clangsay", "#{path}" if File.directory? path
            end
        end
    end
end
