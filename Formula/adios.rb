class Adios < Formula
  desc "CLI for deploying and managing applications on Adios"
  homepage "https://www.adios.dev"
  version "1.0.8"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.0.8/adios_v1.0.8_darwin_arm64.tar.gz"
      sha256 "feed331c7306d3e5f1f3db7b86b01a577ccd1b5296e719f21fb3414fe63b91ae"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.0.8/adios_v1.0.8_darwin_amd64.tar.gz"
      sha256 "1be262a526185c52e3f2dd868da2e0354a754625150bce79e424d2725da6642a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.0.8/adios_v1.0.8_linux_arm64.tar.gz"
      sha256 "052f38f61e8f7b88f38008ef5296bf1bfa37ab5c9c5b78bf8659685e0373c84d"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.0.8/adios_v1.0.8_linux_amd64.tar.gz"
      sha256 "1623ea0195449ac3fe9913d0ed6a4f4ddae293b22337c25a6118664d89fb5f18"
    end
  end

  def install
    bin.install "adios"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adios version")
  end
end
