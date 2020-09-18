class Rext < Formula
  desc "tool that can quickly change the extension of many files as simply as it is to use mv to rename a single file."
  homepage ""
  url "https://github.com/bryceac/rext/archive/rext-0.2.tar.gz"
  sha256 "655d2f12d2288e6d9efb4487fbb3283beefc2e0f457d4d65cd936290923c7720"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
    man1.install "rext.1"
  end

  test do
    system "#{bin}/rext", "--help"
  end
end
