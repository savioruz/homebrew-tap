class Owi < Formula
  desc "Simple database migration tool for Swift and Vapor"
  homepage "https://github.com/savioruz/owi"
  version "0.0.5"
  license "MIT"
  
  on_macos do
    url "https://github.com/savioruz/owi/releases/download/v0.0.5/owi-macos.tar.gz"
    sha256 "40e488fe112446ca7ef2b6023388de7394a4f0d607cbfb32ce3831a11674b3ad"
  end
  
  on_linux do
    on_intel do
      url "https://github.com/savioruz/owi/releases/download/v0.0.5/owi-linux-x86_64.tar.gz"
      sha256 "f1601809e1708f52135ae4bbf99c7c9c08186a4f856d93a29662da65768c18db"
    end
    on_arm do
      url "https://github.com/savioruz/owi/releases/download/v0.0.5/owi-linux-aarch64.tar.gz"
      sha256 "0b068f169f59113e1508cc17dbd60f2a7791c8a25967ee08b45836913855b420"
    end
  end
  
  def install
    bin.install "owi"
  end
  
  test do
    system "#{bin}/owi", "--help"
  end
end
