class Gflow < Formula
  desc "gflow - a customized gitflow workflow CLI"
  homepage "https://github.com/jopmiddelkamp/gflow"
  version "5.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-aarch64"
      sha256 "769658cfe89de9cb536a6198d47c551b205dc798c1e45a4a3b59229ccd621046"
    else
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-x86_64"
      sha256 "77fc8af95fdba0ddc7cf1730aac2c2232b1dd0322603e57f6a771cc88bafaee7"
    end
  end

  def install
    bin.install stable.url.split("/").last => "gflow"
  end
end
