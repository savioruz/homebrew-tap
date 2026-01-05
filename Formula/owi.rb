class Owi < Formula
  desc "Simple database migration tool for Swift and Vapor"
  homepage "https://github.com/savioruz/owi"
  version "0.0.5"
  license "MIT"
  
  on_macos do
    url "https://github.com/savioruz/owi/releases/download/v0.0.5/owi-macos.tar.gz"
    sha256 "03b375dbb11aed4d7331086ce011e1b2ad713cffc62b072d095a4578bcf06739"
  end
  
  on_linux do
    on_intel do
      url "https://github.com/savioruz/owi/releases/download/v0.0.5/owi-linux-x86_64.tar.gz"
      sha256 "148710b8627b55dbadee85fa8171d802e1b454c5fcdfc5b78642df8eef810ac4"
    end
    on_arm do
      url "https://github.com/savioruz/owi/releases/download/v0.0.5/owi-linux-aarch64.tar.gz"
      sha256 "85d578de57ab93fcdc2ce0b3704c805b3d42ed77542eb6878ba16a0ba5607453"
    end
  end
  
  def install
    bin.install "owi"
  end
  
  test do
    system "#{bin}/owi", "--help"
  end
end
