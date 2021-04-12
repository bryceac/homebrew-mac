class Rext < Formula
  desc "tool that can quickly change the extension of many files as simply as it is to use mv to rename a single file."
  homepage ""
  url "https://github.com/bryceac/rext/archive/rext-0.2.tar.gz"
  sha256 "70f1846bb8b22c593a961dbd5f9ff9b2c81f7c0e4ecab0cdd985f8980848ea11"

  depends_on :xcode => ["11.4", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
    man1.install "rext.1"
  end

  test do
    system "#{bin}/rext", "--help"
  end
end
