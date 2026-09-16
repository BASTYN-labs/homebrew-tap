class Bastyn < Formula
  desc "Single-binary static analysis for AI and agent code"
  homepage "https://bastyn.ai"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.1.5/bastyn-v0.1.5-aarch64-apple-darwin.tar.gz"
      sha256 "2aace09b3a9b37a882c9160c0dbfc133137cbce3df1643ada34c983860b21f04"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.1.5/bastyn-v0.1.5-x86_64-apple-darwin.tar.gz"
      sha256 "e177b7a7e3f27054d195740c3c991d549afd26ffef76d4d85c2282330a25333c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.1.5/bastyn-v0.1.5-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3548511dad2605778366ce1db223c915f91ed1cb68176ac621dfbe504bd94125"
    end
    on_intel do
      url "https://github.com/BASTYN-labs/bastyn-scan/releases/download/v0.1.5/bastyn-v0.1.5-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ac27317e58100db8b60b602538838e73b9ac4f6c0168cdfe20035259ef48eed8"
    end
  end

  def install
    bin.install "bastyn"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bastyn --version")
  end
end
