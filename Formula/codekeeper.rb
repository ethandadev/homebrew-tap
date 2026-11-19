class Codekeeper < Formula
  desc "Keep coding projects, tasks, timers, and GitHub issues in one CLI"
  homepage "https://github.com/ethandadev/homebrew-tap/releases/tag/codekeeper-v0.3.1"
  url "https://github.com/ethandadev/homebrew-tap/releases/download/codekeeper-v0.3.1/codekeeper-0.3.1.tar.gz"
  sha256 "58a8e44d9e2b3a802488541e47b162e34a8ce32b796f3d43761e70a780b6e4d2"

  depends_on "python-tk@3.14"
  depends_on "python@3.14"

  def install
    system "python3.14", "-m", "venv", libexec
    system libexec/"bin/python", "-m", "pip", "install", "--no-index",
           "--find-links", buildpath/"wheels", "codekeeper==#{version}"
    bin.install_symlink libexec/"bin/ck", libexec/"bin/codekeeper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ck --version")
    assert_match "ck project add demo", shell_output("#{bin}/ck tutorial")
    assert_match "Open the desktop window.", shell_output("#{bin}/ck gui --help")
    system libexec/"bin/python", "-c", "import tkinter; from codekeeper.window import CodeKeeperWindow"
    assert_match "Set up a GitHub token", shell_output("#{bin}/ck github --help")
  end
end
