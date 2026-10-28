cask "boro-app" do
  version "0.3.0"
  sha256 "7b0e839301a6ed62512159682c1c662332e092dd547fd0d2725c207cf0158b03"

  url "https://github.com/ethandadev/boro/releases/download/v#{version}/Boro-#{version}.pkg"
  name "Boro"
  desc "Code editor built from scratch in C++"
  homepage "https://boro.ethandadev.com"

  depends_on arch: :arm64

  pkg "Boro-#{version}.pkg"
  uninstall pkgutil: "com.ethandadev.boro"
end
