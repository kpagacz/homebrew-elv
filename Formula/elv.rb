class Elv < Formula
  desc "Little CLI helper for Advent of Code. 🎄"
  homepage "https://github.com/kpagacz/elv"
  url "https://github.com/kpagacz/elv/archive/refs/tags/v0.12.1.tar.gz"
  sha256 "281c923dd15e51299d97b2bc2292e1a116ffcad72b66451079d38d3460fbef6e"

  depends_on "rust" => :build
  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/elv"
  end

  test do
    system "elv", "--version"
  end
end
