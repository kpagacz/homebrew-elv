class Elv < Formula
  desc "Little CLI helper for Advent of Code"
  homepage "https://github.com/kpagacz/elv"
  url "https://github.com/kpagacz/elv/archive/refs/tags/v0.13.2.tar.gz"
  sha256 "2e074f0134afc62bad88875a85226a9ea02681f63bdf099bbc9cf0fd7ef76b53"
  license ""

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/elv"
  end

  test do
    system "true"
  end
end
