class Adios < Formula
  desc "CLI for deploying and managing applications on Adios"
  homepage "https://www.adios.dev"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.2/adios_v1.1.2_darwin_arm64.tar.gz"
      sha256 "1375c0bc0f81f7fbf1f584c595b033311916396e37ae62d75861fa5ece59fa78"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.2/adios_v1.1.2_darwin_amd64.tar.gz"
      sha256 "1858dfa55dc2a62c556db52ae58b0e7650f6cfd7d5f90be124d4fee838f6f7e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.2/adios_v1.1.2_linux_arm64.tar.gz"
      sha256 "ddb7b2252599e86cf0d751bfaf1548619b07e0e50cb5116af135e8165470244a"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.2/adios_v1.1.2_linux_amd64.tar.gz"
      sha256 "6989376897e5380ff04387be87c0dbafe8414bef13eddfddbc0125b1db9980fd"
    end
  end

  def install
    bin.install "adios"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adios version")
  end
end
