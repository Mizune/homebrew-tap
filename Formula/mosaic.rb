class Mosaic < Formula
  desc "TUI command center for running 10+ AI coding agents in parallel"
  homepage "https://github.com/Mizune/mosaic"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Mizune/mosaic/releases/download/v0.2.1/mosaic_0.2.1_darwin_arm64.tar.gz"
      sha256 "8a4fbeee30edb8df5a9a7ab43df3815f2d0412e58e9ec4957133a3a21a1ede05"
    end
    on_intel do
      url "https://github.com/Mizune/mosaic/releases/download/v0.2.1/mosaic_0.2.1_darwin_amd64.tar.gz"
      sha256 "55e0e9eb6734cf17ed5dcc353353599ac2b18baa89ec9ebfb7a3e53914018695"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Mizune/mosaic/releases/download/v0.2.1/mosaic_0.2.1_linux_arm64.tar.gz"
      sha256 "eaafa1b0c81d0c32507f5e1d4923c0327b759136f2af80fb44793def081e4cd6"
    end
    on_intel do
      url "https://github.com/Mizune/mosaic/releases/download/v0.2.1/mosaic_0.2.1_linux_amd64.tar.gz"
      sha256 "985783cba8f94e8a0cacc5eed0f16bb2793ae5523ead5220795068d921d132ea"
    end
  end

  def install
    bin.install "mosaic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mosaic --version")
  end
end
