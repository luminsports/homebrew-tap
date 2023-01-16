class Blessclient < Formula
  desc "SSH without pain."
  homepage "https://github.com/chanzuckerberg/blessclient"
  version "0.6.1"

  on_macos do
    url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.6.1/blessclient_0.6.1_darwin_amd64.tar.gz"
    sha256 "2550426d33ecf2d06aed81359159129e9b0bca41b7ed417da47c859682330cda"
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/chanzuckerberg/blessclient/releases/download/v0.6.1/blessclient_0.6.1_linux_amd64.tar.gz"
      sha256 "82ac3f8f82adaa225c57932db4dcb5addff6b07386c1ed5fc2d149b752fabb9f"
    end
  end

  def install
    bin.install "blessclient"
  end

  test do
    system "#{bin}/blessclient version"
  end
end
