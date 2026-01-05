class Owi < Formula
  desc "Simple database migration tool for Swift and Vapor"
  homepage "https://github.com/savioruz/owi"
  version "0.0.5"
  license "MIT"
  
  on_macos do
    url "https://github.com/savioruz/owi/releases/download/v0.0.5/owi-macos.tar.gz"
    sha256 "a1b0502e0ee23f6497c1d4deb84c3878d2ba5ddf435976ce00085098523c61ac"
  end
  
  on_linux do
    on_intel do
      url "https://github.com/savioruz/owi/releases/download/v0.0.5/owi-linux-x86_64.tar.gz"
      sha256 "a9ad4ebdcbe8b351b33efb5745f2f52c6d1429fe3307ed9897c7a7741dae7ebf"
    end
    on_arm do
      url "https://github.com/savioruz/owi/releases/download/v0.0.5/owi-linux-aarch64.tar.gz"
      sha256 "aa5e0273f4d83eae669fe559ab6164f602fb79d1cc596787e7808b941877c603"
    end
  end
  
  def install
    bin.install "owi"
  end
  
  test do
    system "#{bin}/owi", "--help"
  end
end
