class Gflow < Formula
  desc "gflow - a customized gitflow workflow CLI"
  homepage "https://github.com/jopmiddelkamp/gflow"
  version "4.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-aarch64"
      sha256 "9ffc2ca996a555a23792261df7698dd1c581760a90a53be976335b172df09fc4"
    else
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-x86_64"
      sha256 "3e8eb412fcdfe33f44db8cbaf27240e9d402956984235f7baa2cf58b37cd8517"
    end
  end

  def install
    bin.install stable.url.split("/").last => "gflow"
  end
end
