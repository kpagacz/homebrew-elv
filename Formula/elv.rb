class Elv < Formula
  desc "Little CLI helper for Advent of Code"
  homepage "https://github.com/kpagacz/elv"
  url "https://github.com/kpagacz/elv/archive/refs/tags/v0.13.5.tar.gz"
  sha256 "c9d466deeb4c536651fb9de5d7ab59fb89d00dc4d0b39e2184bccdc71b638537"
  license "GPLv2"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/elv"
  end

  test do
    system "true"
  end
end
