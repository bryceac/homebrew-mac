class Rext < Formula
  desc "tool that can quickly change the extension of many files as simply as it is to use mv to rename a single file."
  homepage ""
  url "https://github.com/bryceac/rext/archive/rext-0.1.tar.gz"
  sha256 "b9f07f359935156e8d252b1e903daad0c152c460e7d3656ebf7a90d3cc0cfe27"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/rext", "--help"
  end
end
