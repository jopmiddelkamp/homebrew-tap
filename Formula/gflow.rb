class Gflow < Formula
  desc "gflow - a customized gitflow workflow CLI"
  homepage "https://github.com/jopmiddelkamp/gflow"
  version "4.4.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-aarch64"
      sha256 "70cd77dd9fe5a4d0fd6e255af042fdc97b75cabd4fc10f7722dd3a8d30f7859e"
    else
      url "https://github.com/jopmiddelkamp/gflow/releases/download/v#{version}/gflow-macos-x86_64"
      sha256 "48c26fdbe2d726b8898c83a4026eee6707d20a1ca752d2b5b71e5bed85c4b5f9"
    end
  end

  def install
    bin.install stable.url.split("/").last => "gflow"
  end
end
