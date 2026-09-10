class Gflow < Formula
  desc "gflow - a customized gitflow workflow CLI"
  homepage "https://github.com/jopmiddelkamp/gflow"
  version "4.3.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-aarch64"
      sha256 "39a51866d705085672cdd721752f5ab81a753ff68efaa01e9991d0f20f1e6830"
    else
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-x86_64"
      sha256 "e50176c460267001b0bd3d1c4b2e6f4575c666127ca8a643f571d45422a4f77b"
    end
  end

  def install
    bin.install stable.url.split("/").last => "gflow"
  end
end
