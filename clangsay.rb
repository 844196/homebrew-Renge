require "formula"

class Clangsay < Formula
  desc "The classic cowsay program, written in C."
  homepage "https://github.com/sasairc/clangsay"
  url "https://github.com/sasairc/clangsay/archive/v1.6.3.tar.gz"
  sha256 "d074ad1f983d48926cc56a938aa48077d784a7e9d439cf8b722e61ccefe3b08f"
  version "1.6.3"

  depends_on "cowsay"
  depends_on "pkg-config"
  depends_on "glib"

  def install
    system "make", "install", "PREFIX=#{prefix}", "COWPATH=#{HOMEBREW_PREFIX}/share/cows", "MANDIR=#{man6}"
    zsh_completion.install "#{prefix}/share/clangsay/compdef/_clangsay.zsh"
  end
end
