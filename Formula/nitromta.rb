class Nitromta < Formula
  desc "Self-hosted mail delivery engine that speaks the Amazon SES v2 API"
  homepage "https://nitromta.com"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.2.2/nitromta-0.2.2-aarch64-macos.tar.gz"
      sha256 "0782ba4765ad87d2264317d9a427e896aeef7d88eb7e09f8c313abfcbbaae5f6"
    end
    on_intel do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.2.2/nitromta-0.2.2-x86_64-macos.tar.gz"
      sha256 "7103864e16b24ca28f6902fe0a27481cf918792ab10c048fa423e06263e26507"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.2.2/nitromta-0.2.2-aarch64-linux.tar.gz"
      sha256 "433424470547b9131a54222aa1b2bcd84b526bce841876df7f4c3949c00d2e89"
    end
    on_intel do
      url "https://github.com/nitrosend/nitromta/releases/download/v0.2.2/nitromta-0.2.2-x86_64-linux.tar.gz"
      sha256 "73c427440c39cfa0fb176279fb4bc5297de470082d6c5e2ed9b1f6ed46d01915"
    end
  end

  def install
    bin.install "nitromta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nitromta --version")
  end
end
