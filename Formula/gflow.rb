class Gflow < Formula
  desc "gflow - a customized gitflow workflow CLI"
  homepage "https://github.com/jopmiddelkamp/gflow"
  version "4.3.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-aarch64"
      sha256 "33029495bba3d010e8c8e929301f91731b6370ab1b83a7ed63303920d7e494be"
    else
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-x86_64"
      sha256 "2f5ec7789d3f01ae65b352fff71af7329f649d7e2a50e9a800b6ed40bb20bdc9"
    end
  end

  def install
    bin.install stable.url.split("/").last => "gflow"
  end
end
