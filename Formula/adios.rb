class Adios < Formula
  desc "CLI for deploying and managing applications on Adios"
  homepage "https://www.adios.dev"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.0/adios_v1.1.0_darwin_arm64.tar.gz"
      sha256 "62fe02c6f0784f504aba4860b062ce3fa3a140987b0d4cda92a26b66ff16b089"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.0/adios_v1.1.0_darwin_amd64.tar.gz"
      sha256 "2e00f57f56ca5faae48f05fab0bf0a879dde0e2dc0933b515c998c580c5d75bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.0/adios_v1.1.0_linux_arm64.tar.gz"
      sha256 "75317130a978a9717b16b6efca4db2b48ee617124aad3c2ad5db6e782e3aa14b"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.0/adios_v1.1.0_linux_amd64.tar.gz"
      sha256 "312f83f5b37f44606703e343f82f22cc5d1ed59faba155e7b3199d78bbec69dc"
    end
  end

  def install
    bin.install "adios"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adios version")
  end
end
