class Bastyn < Formula
  desc "Single-binary static analysis for AI and agent code"
  homepage "https://bastyn.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.1.6/bastyn-v0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "dbbb147456a5256a8ac1bfc73da1ba74aaca7d02b88aceebc471beb210f2ccbc"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.1.6/bastyn-v0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "7243f1f0a22e36e43abdcef43a6ab05b36e266e0eb3bcc495bcf0297d5673104"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.1.6/bastyn-v0.1.6-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0dc0d262d2f7ff46ff62abb0b58a46d7b2a64b5e4b7bea7d473ad8f9635bb330"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.1.6/bastyn-v0.1.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "77b32bbf9dd310dde3ea6863aa641f3fffc6160a072a80e78b96e06019fc1d7d"
    end
  end

  def install
    bin.install "bastyn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bastyn --version")
  end
end
