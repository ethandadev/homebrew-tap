class Boro < Formula
  desc "Terminal code editor written in C++"
  homepage "https://github.com/ethandadev/boro"
  url "https://github.com/ethandadev/boro/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "196f14969387a29e83097d0ad431d300f37dfd46279f45aa66f819215cbb42c2"
  license "MIT"

  def install
    system "make", "release"
    bin.install "build/boro"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/boro 2>&1", 1)
  end
end
