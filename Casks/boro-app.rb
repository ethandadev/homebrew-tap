cask "boro-app" do
  version "0.2.0"
  sha256 "8f4be1bc60ae79a6fa5b6ef42afb2823d6e96aae5c0fe979a62fc539f5565c25"

  url "https://github.com/ethandadev/boro/releases/download/v#{version}/Boro-#{version}.pkg"
  name "Boro"
  desc "Code editor built from scratch in C++"
  homepage "https://boro.ethandadev.com"

  depends_on arch: :arm64

  pkg "Boro-#{version}.pkg"
  uninstall pkgutil: "com.ethandadev.boro"
end
