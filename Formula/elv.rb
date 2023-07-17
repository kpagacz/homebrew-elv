class Elv < Formula
  desc "Little CLI helper for Advent of Code"
  homepage "https://github.com/kpagacz/elv"
  url "https://github.com/kpagacz/elv/archive/refs/tags/v0.12.3.tar.gz"
  sha256 "38623707c39c0005698ce2d933d027a12d1f3a67f53b9167b0bbadb014d4b06d"
  license ""

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
    bin.install "target/release/elv"
  end

  test do
    system "elv", "--version"
  end
end
