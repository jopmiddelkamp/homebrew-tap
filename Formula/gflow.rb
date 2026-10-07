class Gflow < Formula
  desc "gflow - a customized gitflow workflow CLI"
  homepage "https://github.com/jopmiddelkamp/gflow"
  version "4.5.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-aarch64"
      sha256 "36e2c7cc6184341fe40c45443ce3ec566785d0d9f48167c47137f11bc920748a"
    else
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-x86_64"
      sha256 "ca99680c0c9bcaf5a1c53525af6e7311266ae3a2074477272956ed793535bbf2"
    end
  end

  def install
    bin.install stable.url.split("/").last => "gflow"
  end
end
