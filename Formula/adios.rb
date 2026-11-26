class Adios < Formula
  desc "CLI for deploying and managing applications on Adios"
  homepage "https://www.adios.dev"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.8/adios_v1.1.8_darwin_arm64.tar.gz"
      sha256 "2a2820ed74837b347f8a2d6b8e79cbc8410363619d48bbc4647655f06f41e9c5"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.8/adios_v1.1.8_darwin_amd64.tar.gz"
      sha256 "e41af298991e03eb03eaa75b6830948f8b1422b118694c4e5764b01c6137d11d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.8/adios_v1.1.8_linux_arm64.tar.gz"
      sha256 "e7fb6b92a10d4a51ff1425cd7bfeea7e87a878a15f8f60e6c47e04b7d10358d8"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.8/adios_v1.1.8_linux_amd64.tar.gz"
      sha256 "70c4769d3913c44a110453922e6c433a771545d30b0868584ede4af1e291e192"
    end
  end

  def install
    bin.install "adios"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adios version")
  end
end
