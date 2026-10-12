class Gflow < Formula
  desc "gflow - a customized gitflow workflow CLI"
  homepage "https://github.com/jopmiddelkamp/gflow"
  version "5.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-aarch64"
      sha256 "abb517f0be02726216d9547d6eba61e01ec5d18414e671635aafb6afffcd654d"
    else
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-x86_64"
      sha256 "31575ef1baa860a7a503eb68220f6038a9065fccee706dacdbe8c2edd73e9974"
    end
  end

  def install
    bin.install stable.url.split("/").last => "gflow"
  end
end
