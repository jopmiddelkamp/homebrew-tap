class Gflow < Formula
  desc "gflow - a customized gitflow workflow CLI"
  homepage "https://github.com/jopmiddelkamp/gflow"
  version "4.2.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-aarch64"
      sha256 "0f15acf1b1e8653802e073664c7557b21135f3b1c165f5e0e50ca9227fca2f8b"
    else
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-x86_64"
      sha256 "48dfc1810783e4e32e6deaba8f4be584318a37688bc0deab93f4697ebf089718"
    end
  end

  def install
    bin.install stable.url.split("/").last => "gflow"
  end
end
