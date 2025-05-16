class CryptozapCli < Formula
  desc "Secure file encryption and decryption tool"
  homepage "https://github.com/rodnoy/CryptoZap"
  url "https://github.com/rodnoy/CryptoZap/releases/download/v1.0.4/cryptozap-cli-app-v1.0.4.tar.gz"
  sha256 "514c0e7ca83ff37971e0740f75efeca53100df96a91d5539e49bd16a3ad6fcba"
  license "MIT"

  def install
    bin.install "cryptozap-cli"
    man1.install "cryptozap-cli.1.gz" => "cryptozap-cli.1"
    prefix.install "CryptoEngine_CryptoEngine.bundle"
  end

  test do
    system "#{bin}/cryptozap-cli", "--version"
  end
end
