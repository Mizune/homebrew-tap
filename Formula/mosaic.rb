class Mosaic < Formula
  desc "TUI command center for running 10+ AI coding agents in parallel"
  homepage "https://github.com/Mizune/mosaic"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Mizune/mosaic/releases/download/v0.2.2/mosaic_0.2.2_darwin_arm64.tar.gz"
      sha256 "f0f74c9a32f0c19d8519c807a5f06438d4670583b7a7a61d5038abf8e6af570c"
    end
    on_intel do
      url "https://github.com/Mizune/mosaic/releases/download/v0.2.2/mosaic_0.2.2_darwin_amd64.tar.gz"
      sha256 "6c3f61ab14322c45ae0dd95ba32b3c7993ee5fcaeaecdd9fd68c1300375e9a48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Mizune/mosaic/releases/download/v0.2.2/mosaic_0.2.2_linux_arm64.tar.gz"
      sha256 "ef63cdcc58696210cfcf447a7869e566ace77fbc0170c276322c55f167480b92"
    end
    on_intel do
      url "https://github.com/Mizune/mosaic/releases/download/v0.2.2/mosaic_0.2.2_linux_amd64.tar.gz"
      sha256 "82a29e5ed57bc86102603b270fb680bc7181d41036eb275035b1943cb8c86f88"
    end
  end

  def install
    bin.install "mosaic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mosaic --version")
  end
end
