class Adios < Formula
  desc "CLI for deploying and managing applications on Adios"
  homepage "https://www.adios.dev"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.3/adios_v1.1.3_darwin_arm64.tar.gz"
      sha256 "8f15b0efc446cea18084d3baa0f7eb0eafee41c1b0b3c899ea710e14785797c0"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.3/adios_v1.1.3_darwin_amd64.tar.gz"
      sha256 "4eb76d79dda251cd78b7415548ba3e6ab43962b26667f207e67f50648886a095"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.3/adios_v1.1.3_linux_arm64.tar.gz"
      sha256 "539c2ff5663cd4dfb02e8f5224e8d8381bd255486d9a5ab5a5a8d247e50e32bd"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.3/adios_v1.1.3_linux_amd64.tar.gz"
      sha256 "945353b25b1d668b20ab0e1e0f159a0d0bebdcad653d15b89d2b0c50de1a644a"
    end
  end

  def install
    bin.install "adios"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adios version")
  end
end
