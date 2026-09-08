class Gflow < Formula
  desc "gflow - a customized gitflow workflow CLI"
  homepage "https://github.com/jopmiddelkamp/gflow"
  version "4.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-aarch64"
      sha256 "ad394c32e016b4714a29a838ca364eee72579c090460119e902db690bd4d529d"
    else
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-x86_64"
      sha256 "842e1129d8abc210962c2f47e2749d6bfeaa697662654396e58e62ab99ea1250"
    end
  end

  def install
    bin.install stable.url.split("/").last => "gflow"
  end
end
