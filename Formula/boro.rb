class Boro < Formula
  desc "Terminal code editor written in C++"
  homepage "https://github.com/ethandadev/boro"
  url "https://github.com/ethandadev/boro/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "590e82cadcba49b5675188de032cf5220819d62680f816a59365ce269afc64f6"
  license "MIT"

  def install
    system "make", "release"
    bin.install "build/boro"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/boro 2>&1", 1)
  end
end
