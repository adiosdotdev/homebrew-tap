class Adios < Formula
  desc "CLI for deploying and managing applications on Adios"
  homepage "https://www.adios.dev"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.6/adios_v1.1.6_darwin_arm64.tar.gz"
      sha256 "f23b461d0f9b48a15491095474af4a13c67f284485a6eaec1a2af452a1aa7571"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.6/adios_v1.1.6_darwin_amd64.tar.gz"
      sha256 "dd61aab04e1257dfece9801919cb60cf96d4aad105dc1af3ab052164ddd35b2d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.6/adios_v1.1.6_linux_arm64.tar.gz"
      sha256 "8ed4e04dd4b40723ba0dee469165b686169d54c0086ec2fd484edd19eee84249"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.6/adios_v1.1.6_linux_amd64.tar.gz"
      sha256 "864168713a128f592da4d5784f98c709bd3de37da938fe0d3564aabe51caa2da"
    end
  end

  def install
    bin.install "adios"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adios version")
  end
end
