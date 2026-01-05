class Owi < Formula
  desc "Simple database migration tool for Swift and Vapor"
  homepage "https://github.com/savioruz/owi"
  version "0.0.5"
  license "MIT"
  
  on_macos do
    url "https://github.com/savioruz/owi/releases/download/v0.0.5/owi-macos.tar.gz"
    sha256 "ed84be2e31868a5db60b1eed546330c04e6663ad0eb7b01c761dcd41896a17d9"
  end
  
  on_linux do
    on_intel do
      url "https://github.com/savioruz/owi/releases/download/v0.0.5/owi-linux-x86_64.tar.gz"
      sha256 "adb9f640beddea92597fdbd020f9dec27a082601ca9c746df36809be4fcb09c7"
    end
    on_arm do
      url "https://github.com/savioruz/owi/releases/download/v0.0.5/owi-linux-aarch64.tar.gz"
      sha256 "82627cc948581623e92763f41587eae0a09764156d6e0019d5ae3343a81a43ae"
    end
  end
  
  def install
    bin.install "owi"
  end
  
  test do
    system "#{bin}/owi", "--help"
  end
end
