class CryptozapCli < Formula
  desc "Secure file encryption and decryption tool"
  homepage "https://github.com/rodnoy/CryptoZap"
  url "https://github.com/rodnoy/CryptoZap/releases/download/v1.0.2.1/cryptozap-cli-app-v1.0.2.1.tar.gz"
  sha256 "55d9a07e6512f2922f6366166890283580ac508caa9a80c673178d4fef87834f"
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
