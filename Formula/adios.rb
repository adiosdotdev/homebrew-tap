class Adios < Formula
  desc "CLI for deploying and managing applications on Adios"
  homepage "https://www.adios.dev"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.7/adios_v1.1.7_darwin_arm64.tar.gz"
      sha256 "d0d7ac8d63fffb16eed3683aff0cca91e6f12d703488a02b52f5a7b55982d1ef"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.7/adios_v1.1.7_darwin_amd64.tar.gz"
      sha256 "c5219db23a950da290cefc3a71f0fc74fbc284e95b29c2e0cd18661438645895"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.7/adios_v1.1.7_linux_arm64.tar.gz"
      sha256 "b29e277956283caaa2d1ceb8c889dead8de79aa4a4c0aac38d28bfb5abbd184e"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.7/adios_v1.1.7_linux_amd64.tar.gz"
      sha256 "e641db52d7973009b3cd2506dabbfa46ed624edd292ab8d93ce9df52c1b0d554"
    end
  end

  def install
    bin.install "adios"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adios version")
  end
end
