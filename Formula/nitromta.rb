class Nitromta < Formula
  desc "Self-hosted mail delivery engine that speaks the Amazon SES v2 API"
  homepage "https://nitromta.com"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.2.0/nitromta-0.2.0-aarch64-macos.tar.gz"
      sha256 "30f473ca59e026619ecbe6c31323dc3ca6c39713f5392537b3bce09cee74922c"
    end
    on_intel do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.2.0/nitromta-0.2.0-x86_64-macos.tar.gz"
      sha256 "cb3c5b82d7ff3671a6d5b78ce32d767021553f617c8b522e022ec0716fe76aaa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.2.0/nitromta-0.2.0-aarch64-linux.tar.gz"
      sha256 "22f4bd7a118488eda2f6a394b95b7b0274ecdc13bcb672f2bb90f1f21fe4d459"
    end
    on_intel do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.2.0/nitromta-0.2.0-x86_64-linux.tar.gz"
      sha256 "4263591cd6f295296c7fb567c4cd95b80f3e915d0edecb82f451519cd463f390"
    end
  end

  def install
    bin.install "nitromta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitromta --version")
  end
end
