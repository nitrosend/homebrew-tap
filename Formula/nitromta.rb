class Nitromta < Formula
  desc "Self-hosted mail delivery engine that speaks the Amazon SES v2 API"
  homepage "https://nitromta.com"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.2.1/nitromta-0.2.1-aarch64-macos.tar.gz"
      sha256 "0844172b085e1eee782da92a4980e0079bce7ead5202a57412a4016e976ec0ee"
    end
    on_intel do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.2.1/nitromta-0.2.1-x86_64-macos.tar.gz"
      sha256 "bb3bb6384600a3269f0c5eea1f46caa93aeabab80785da63865cc6c129b5f2d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.2.1/nitromta-0.2.1-aarch64-linux.tar.gz"
      sha256 "304693698a880b7dd87563a19da7ecd3ec9cc56da94583b6baae04000461f678"
    end
    on_intel do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.2.1/nitromta-0.2.1-x86_64-linux.tar.gz"
      sha256 "e71ee6b84332aba6210f81ac9d8982ac394ab00d344da5146def7cddd4a27925"
    end
  end

  def install
    bin.install "nitromta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitromta --version")
  end
end
