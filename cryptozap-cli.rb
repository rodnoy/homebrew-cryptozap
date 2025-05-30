class CryptozapCli < Formula
  desc "Secure file encryption and decryption tool"
  homepage "https://github.com/rodnoy/CryptoZap"
  url "https://github.com/rodnoy/CryptoZap/releases/download/v1.0.4.1/cryptozap-cli-app-v1.0.4.tar.gz"
  sha256 "739a7d899f7dbf40326195782a1cfc009fc128d021b094bebef48fa141851ebb"
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
