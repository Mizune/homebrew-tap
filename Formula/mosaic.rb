class Mosaic < Formula
  desc "TUI command center for running 10+ AI coding agents in parallel"
  homepage "https://github.com/Mizune/mosaic"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Mizune/mosaic/releases/download/v0.2.0/mosaic_0.2.0_darwin_arm64.tar.gz"
      sha256 "c2ec213b35dfac33d6311a881d45d04e74e090049d7fe3dfb38e6f315c0256f7"
    end
    on_intel do
      url "https://github.com/Mizune/mosaic/releases/download/v0.2.0/mosaic_0.2.0_darwin_amd64.tar.gz"
      sha256 "6c5ec6398a345a0045d3f34242da046711ab14a7603430feafac791a59e395f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Mizune/mosaic/releases/download/v0.2.0/mosaic_0.2.0_linux_arm64.tar.gz"
      sha256 "1b1272f3baae0690a9c802b5748c5e4bf3b25acef73d7487ef030109565297aa"
    end
    on_intel do
      url "https://github.com/Mizune/mosaic/releases/download/v0.2.0/mosaic_0.2.0_linux_amd64.tar.gz"
      sha256 "324dc88058f93207b5486242ba87d95db72080cf477862edf5f5d8456d539b87"
    end
  end

  def install
    bin.install "mosaic"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mosaic --version")
  end
end
