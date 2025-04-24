class CryptozapCli < Formula
  desc "Secure file encryption and decryption tool"
  homepage "https://github.com/rodnoy/CryptoZap"
  url "https://github.com/rodnoy/CryptoZap/releases/download/v1.0.2.1/cryptozap-cli-app-v1.0.2.1.tar.gz"
  sha256 "91eac5ab23053a148a20b426dd0905ee8ab1af3827496f01ce999e6994aec6c9"
  license "MIT"

  def install
    bin.install "cryptozap-cli"
    man1.install "cryptozap-cli.1.tar.gz" => "cryptozap-cli.1"
    prefix.install "CryptoEngine_CryptoEngine.bundle"
  end

  test do
    system "#{bin}/cryptozap-cli", "--version"
  end
end
