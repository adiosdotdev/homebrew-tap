class Adios < Formula
  desc "CLI for deploying and managing applications on Adios"
  homepage "https://www.adios.dev"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.5/adios_v1.1.5_darwin_arm64.tar.gz"
      sha256 "fb85fc24936124636675211d9f8372be15c5b71967b66bced029f1e52471f0b7"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.5/adios_v1.1.5_darwin_amd64.tar.gz"
      sha256 "b508d9488df532d3027439f0021e5942131d8065b7a10895f620e6a077ad1a42"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.5/adios_v1.1.5_linux_arm64.tar.gz"
      sha256 "d6a4d9075a01e44b2b96bab6bae689914241dc47f30a75ccd746cf9c36b83bfe"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.5/adios_v1.1.5_linux_amd64.tar.gz"
      sha256 "87c0917e5f2dd6a2db597428fba7e9c8004c20cbf1618231fedfa940936d008b"
    end
  end

  def install
    bin.install "adios"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adios version")
  end
end
