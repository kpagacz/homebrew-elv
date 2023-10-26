class Elv < Formula
  desc "Little CLI helper for Advent of Code"
  homepage "https://github.com/kpagacz/elv"
  url "https://github.com/kpagacz/elv/archive/refs/tags/v0.13.1.tar.gz"
  sha256 "60d1a7c6a28c32cec2fee0e18e33e0810b0523fe4bd21ca9b87a496a9f42b99b"
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
