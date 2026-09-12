class Adios < Formula
  desc "CLI for deploying and managing applications on Adios"
  homepage "https://www.adios.dev"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.0.9/adios_v1.0.9_darwin_arm64.tar.gz"
      sha256 "d81ca19b046f62830ef2e350930d6b090ab71d5272f723bd1262b5ca8b04d60d"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.0.9/adios_v1.0.9_darwin_amd64.tar.gz"
      sha256 "841cb236ac965a353b6f0778c4f230dd22a7ab210f6975c71003d7792e57c46c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.0.9/adios_v1.0.9_linux_arm64.tar.gz"
      sha256 "c559faef3cfc6bac6fc6058038df46112d2d45e1073dbf3cb6cdcd7022a325f1"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.0.9/adios_v1.0.9_linux_amd64.tar.gz"
      sha256 "6048b43533cdb29ba5ee32e714868b4a4321230ac2e32bf6b3e7b7f6d2428a9c"
    end
  end

  def install
    bin.install "adios"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adios version")
  end
end
