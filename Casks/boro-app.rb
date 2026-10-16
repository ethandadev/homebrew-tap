cask "boro-app" do
  version "0.2.0"
  sha256 "158550441a3d526340f8fab06e370642cc6498c10d900f196cffe5b7ffa35077"

  url "https://github.com/ethandadev/boro/releases/download/v#{version}/Boro-#{version}.pkg"
  name "Boro"
  desc "Code editor built from scratch in C++"
  homepage "https://boro.ethandadev.com"

  depends_on arch: :arm64

  pkg "Boro-#{version}.pkg"
  uninstall pkgutil: "com.ethandadev.boro"
end
