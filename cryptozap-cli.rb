class CryptozapCli < Formula
  desc "Secure file encryption and decryption tool"
  homepage "https://github.com/rodnoy/CryptoZap"
  url "https://github.com/rodnoy/CryptoZap/releases/download/v1.0.2/cryptozap-cli-app.tar.gz"
  sha256 "39b1f865983dde6579e5fbef22a88751dcf805e21e84630aed517c55a9d59b14"
  license "MIT"

  def install
    bin.install "cryptozap-cli"
    man1.install "cryptozap-cli.1.tar.gz" => "cryptozap-cli.1"
  end

  test do
    system "#{bin}/cryptozap-cli", "--version"
  end
end
