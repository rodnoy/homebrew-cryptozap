class CryptozapCli < Formula
  desc "Secure file encryption and decryption tool"
  homepage "https://github.com/rodnoy/CryptoZap"
  url "https://github.com/rodnoy/CryptoZap/releases/download/v1.0.2/cryptozap-cli-app.tar.gz"
  sha256 "db4520c395e0ffddfbf941a2fbdad9fa21039a570dd5a0327a6b454cce52235c"
  license "MIT"

  def install
    bin.install "cryptozap-cli"
    man1.install "cryptozap-cli.1.gz" => "cryptozap-cli.1"
  end

  test do
    system "#{bin}/cryptozap-cli", "--version"
  end
end
