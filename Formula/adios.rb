class Adios < Formula
  desc "CLI for deploying and managing applications on Adios"
  homepage "https://www.adios.dev"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.9/adios_v1.1.9_darwin_arm64.tar.gz"
      sha256 "ea1eb42cb9f6587c3025dedacc0c391879050a67eaf5c94d3b660787a55762e8"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.9/adios_v1.1.9_darwin_amd64.tar.gz"
      sha256 "f443424486ee17ad2ec1d40af4186feeb63cd1bbb3118326be6a7bc9156b4fbf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.9/adios_v1.1.9_linux_arm64.tar.gz"
      sha256 "56c8c5b24ac6ae2abe745f774c4c354bac2709da5c1c8fbe021bfa5313bb33b0"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.9/adios_v1.1.9_linux_amd64.tar.gz"
      sha256 "78186c379dc673a4042448903f432abc0a8dd0b693d6c5ebc4c2c05d54194387"
    end
  end

  def install
    bin.install "adios"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adios version")
  end
end
