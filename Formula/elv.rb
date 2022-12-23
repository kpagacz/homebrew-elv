class Elv < Formula
  desc "Little CLI helper for Advent of Code. 🎄"
  homepage "https://github.com/kpagacz/elv"
  url "https://github.com/kpagacz/elv/archive/refs/tags/v0.9.1.tar.gz"
  sha256 "63fbff76d6a9073fab4b5f6e584b6415e014bfd9a454ac08822cabfd95e8361c"

  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/elv"
  end

  test do
    system "elv", "--version"
  end
end
