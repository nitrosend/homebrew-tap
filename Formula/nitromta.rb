class Nitromta < Formula
  desc "Self-hosted mail delivery engine that speaks the Amazon SES v2 API"
  homepage "https://nitromta.com"
  version "0.1.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.1.6/nitromta-0.1.6-aarch64-macos.tar.gz"
      sha256 "d5744f466dad93c637b82e42fd3bf84162221ae750255c078b31bfe5fac0d815"
    end
    on_intel do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.1.6/nitromta-0.1.6-x86_64-macos.tar.gz"
      sha256 "41fc072f70660539fd143f5c2b97d07d36f5f66b12edd2dfd7eaf444e6bac1d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.1.6/nitromta-0.1.6-aarch64-linux.tar.gz"
      sha256 "88ee2a22a25561fcbddc857bfc9dae4deabbf261b5171b246c15a647cf921bdc"
    end
    on_intel do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.1.6/nitromta-0.1.6-x86_64-linux.tar.gz"
      sha256 "fe77b3099badd749d185e211c7978654e26da077b69b9eba6fea72aa4b976966"
    end
  end

  def install
    bin.install "nitromta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitromta --version")
  end
end
