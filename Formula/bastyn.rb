class Bastyn < Formula
  desc "Single-binary static analysis for AI and agent code"
  homepage "https://bastyn.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.1.7/bastyn-v0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "5d4f672a47d5b54d977c54feed50d9d446157df1a4b401dd541012a805c6c5cc"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.1.7/bastyn-v0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "12649d9c09c3289dc27848f4ee298d3f34d1dd6af6769f912f66e3a36148d87d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.1.7/bastyn-v0.1.7-aarch64-unknown-linux-musl.tar.gz"
      sha256 "690f7d93fd767d2159875cdc1cf309071ff53a4551ecc498c2ed563feda95f14"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.1.7/bastyn-v0.1.7-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3687d7ac706d7e36afa51a2d723aed6ac100ce367911b85fe2319ebedc23a1de"
    end
  end

  def install
    bin.install "bastyn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bastyn --version")
  end
end
