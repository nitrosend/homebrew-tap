class Nitromta < Formula
  desc "Self-hosted mail delivery engine that speaks the Amazon SES v2 API"
  homepage "https://nitromta.com"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.1.4/nitromta-0.1.4-aarch64-macos.tar.gz"
      sha256 "0f99e2f1a30e6bdea83429bc8d1e398db084a2e7ff30019f88df45ba206ae542"
    end
    on_intel do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.1.4/nitromta-0.1.4-x86_64-macos.tar.gz"
      sha256 "07d965dbad9a5e4eca27da44b77071ce3c442a5e9c07e0c3151e5ae1cc5cee55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.1.4/nitromta-0.1.4-aarch64-linux.tar.gz"
      sha256 "f11175d439391395a978d222fcb64cb7d3cc616c6f7823c2f817e61c179a5310"
    end
    on_intel do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.1.4/nitromta-0.1.4-x86_64-linux.tar.gz"
      sha256 "d72947f0147639585c255f00caccca9b9f69419d962d3d92915d62f2ed4880ae"
    end
  end

  def install
    bin.install "nitromta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitromta --version")
  end
end
