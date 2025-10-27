class Owi < Formula
  desc "Simple database migration tool for Swift and Vapor"
  homepage "https://github.com/savioruz/owi"
  version "0.0.2"
  license "MIT"
  
  on_macos do
    url "https://github.com/savioruz/owi/releases/download/v0.0.2/owi-macos.tar.gz"
    sha256 "32f30b13e780273ebc3602e2e3b1a67039ab8ef3ff9c6cfc14045925133e4b13"
  end
  
  on_linux do
    on_intel do
      url "https://github.com/savioruz/owi/releases/download/v0.0.2/owi-linux-x86_64.tar.gz"
      sha256 "c25981d4ece15a53fdc01049521105090600651ccf9ee23550062c9be10644ca"
    end
    on_arm do
      url "https://github.com/savioruz/owi/releases/download/v0.0.2/owi-linux-aarch64.tar.gz"
      sha256 "1a97a38826b1006dcf174cd7667ac93bbc9e5cdaa3001d1b2ed1c2ef3c43f69f"
    end
  end
  
  def install
    bin.install "owi"
  end
  
  test do
    system "#{bin}/owi", "--help"
  end
end
