class Nitromta < Formula
  desc "Self-hosted mail delivery engine that speaks the Amazon SES v2 API"
  homepage "https://nitromta.com"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.1.5/nitromta-0.1.5-aarch64-macos.tar.gz"
      sha256 "52b7eaf7fea427c95051d11d4a9dfb35712b3bb14ef35dff913bbe579ce659ca"
    end
    on_intel do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.1.5/nitromta-0.1.5-x86_64-macos.tar.gz"
      sha256 "a9c8df235c223dcfebba123d76dd71fa80237eac199e96ac5464773af9d4003c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.1.5/nitromta-0.1.5-aarch64-linux.tar.gz"
      sha256 "c7e2fd1487977345a0d7219beb2cb7e7f3fbd410878e14d91a2900cd53e1178b"
    end
    on_intel do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.1.5/nitromta-0.1.5-x86_64-linux.tar.gz"
      sha256 "e59f8c139aedf9bb501ccd594c230b4316d7568431dfbde290c90de6e9f34441"
    end
  end

  def install
    bin.install "nitromta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitromta --version")
  end
end
