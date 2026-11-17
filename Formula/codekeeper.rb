class Codekeeper < Formula
  desc "Keep coding projects, tasks, timers, and GitHub issues in one CLI"
  homepage "https://github.com/ethandadev/homebrew-tap/releases/tag/codekeeper-v0.3.0"
  url "https://github.com/ethandadev/homebrew-tap/releases/download/codekeeper-v0.3.0/codekeeper-0.3.0.tar.gz"
  sha256 "8dedadba2f3ed95cdd52d80fd74d90261b5efa0afa5591da3ea2eda50b8ced8c"

  depends_on "python@3.14"

  def install
    system "python3.14", "-m", "venv", libexec
    system libexec/"bin/python", "-m", "pip", "install", "--no-index",
           "--find-links", buildpath/"wheels", "codekeeper==#{version}"
    bin.install_symlink libexec/"bin/ck", libexec/"bin/codekeeper"
    doc.install "README.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ck --version")
    assert_match "CodeKeeper tutorial", shell_output("#{bin}/ck tutorial")
    assert_match "Set up a GitHub token", shell_output("#{bin}/ck github --help")
  end
end
