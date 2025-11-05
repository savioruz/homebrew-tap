class Owi < Formula
  desc "Simple database migration tool for Swift and Vapor"
  homepage "https://github.com/savioruz/owi"
  version "0.0.5"
  license "MIT"
  
  on_macos do
    url "https://github.com/savioruz/owi/releases/download/v0.0.5/owi-macos.tar.gz"
    sha256 "10c66b8074a6619d3a33a2570c228341b8fad66f8d83bad8de9357e41a5d83a0"
  end
  
  on_linux do
    on_intel do
      url "https://github.com/savioruz/owi/releases/download/v0.0.5/owi-linux-x86_64.tar.gz"
      sha256 "2cfa3e67303438af2914466c12b1f2450dbb35e621e4108076e5aebfc0052f58"
    end
    on_arm do
      url "https://github.com/savioruz/owi/releases/download/v0.0.5/owi-linux-aarch64.tar.gz"
      sha256 "7ac53ec62c1c72ed5333c0e6787d2e7a13ed697b22dde543ed7ba984d60fe3fa"
    end
  end
  
  def install
    bin.install "owi"
  end
  
  test do
    system "#{bin}/owi", "--help"
  end
end
