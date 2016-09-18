require "formula"

class Clangsay < Formula
  desc "The classic cowsay program, written in C."
  homepage "https://github.com/sasairc/clangsay"
  url "https://github.com/sasairc/clangsay/archive/v1.6.2.tar.gz"
  sha256 "67cf072ed2184f4a2d42e0656938e25b94b53ed5fae371ccc4175f2e76475ea1"
  version "1.6.2"

  depends_on "cowsay"
  depends_on "pkg-config"
  depends_on "glib"

  def install
    system "make", "install", "PREFIX=#{prefix}", "COWPATH=#{HOMEBREW_PREFIX}/share/cows", "MANDIR=#{man6}"
    zsh_completion.install "#{prefix}/share/clangsay/compdef/_clangsay.zsh"
  end
end
