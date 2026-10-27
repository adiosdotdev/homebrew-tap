class Adios < Formula
  desc "CLI for deploying and managing applications on Adios"
  homepage "https://www.adios.dev"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.1/adios_v1.1.1_darwin_arm64.tar.gz"
      sha256 "e0737f094e8f9caeaa7aed7fe0543d71ba84cafa7cd5791b458a62bf00a84d87"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.1/adios_v1.1.1_darwin_amd64.tar.gz"
      sha256 "6e357ee2283991e2fd2abe2141705f3f57cf3be04eeb013309e4e5921842f18c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.1/adios_v1.1.1_linux_arm64.tar.gz"
      sha256 "9b26196379c87b6d6b59074329b24f8411bef28a9c111159114ca4c6d50c031e"
    else
      url "https://github.com/adiosdotdev/cli/releases/download/v1.1.1/adios_v1.1.1_linux_amd64.tar.gz"
      sha256 "34639c6deafbaf32ac720103d5f012485be84f66a879ade545fcb70d7c2d5dc1"
    end
  end

  def install
    bin.install "adios"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adios version")
  end
end
