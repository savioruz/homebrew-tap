class Owi < Formula
  desc "Simple database migration tool for Swift and Vapor"
  homepage "https://github.com/savioruz/owi"
  version "0.0.4"
  license "MIT"
  
  on_macos do
    url "https://github.com/savioruz/owi/releases/download/v0.0.4/owi-macos.tar.gz"
    sha256 "54d1ff37dd1c48bb560615668ebc3987ebc46e802f1c0a6438b5637438df892c"
  end
  
  on_linux do
    on_intel do
      url "https://github.com/savioruz/owi/releases/download/v0.0.4/owi-linux-x86_64.tar.gz"
      sha256 "2c5d2161bc91653a6bd12b6edeee56064ffbd717258fef63a0419b2e901d4ee8"
    end
    on_arm do
      url "https://github.com/savioruz/owi/releases/download/v0.0.4/owi-linux-aarch64.tar.gz"
      sha256 "8e1a28d2b084501a1a393cdc0f77fb9eaa5025920a6444cf3c40703a279b8996"
    end
  end
  
  def install
    bin.install "owi"
  end
  
  test do
    system "#{bin}/owi", "--help"
  end
end
