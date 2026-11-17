class Adios < Formula
  desc "CLI for deploying and managing applications on Adios"
  homepage "https://www.adios.dev"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.4/adios_v1.1.4_darwin_arm64.tar.gz"
      sha256 "d0d88fc6cd9911f70975164b6b23fc6a4f478bafd80383887ff0821d3f1d72ae"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.4/adios_v1.1.4_darwin_amd64.tar.gz"
      sha256 "5fbdfddc1b477d0d331f1036938524e452254a8b098503020e011e4aede67e46"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.4/adios_v1.1.4_linux_arm64.tar.gz"
      sha256 "8836dc21fb6fea9ac845be2fe38068dc1f072feff384fe2ce7750f69adeafdb4"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.4/adios_v1.1.4_linux_amd64.tar.gz"
      sha256 "0ee4d58a50d30e562c25615477f305100a44fb261c876962778cb8d66af33767"
    end
  end

  def install
    bin.install "adios"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adios version")
  end
end
