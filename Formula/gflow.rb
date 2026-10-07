class Gflow < Formula
  desc "gflow - a customized gitflow workflow CLI"
  homepage "https://github.com/jopmiddelkamp/gflow"
  version "4.6.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-aarch64"
      sha256 "614c3b7043d12c8bff5dd5e2e0e4e3d9397cfdd91e2e930da485c497e3d3cff8"
    else
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-x86_64"
      sha256 "277ab1bb4e1463e3384eb6d2bb3aaf7cdfdb47f92c17ae442d076a8b10468912"
    end
  end

  def install
    bin.install stable.url.split("/").last => "gflow"
  end
end
