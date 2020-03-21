class Rext < Formula
  desc "tool that can quickly change the extension of many files as simply as it is to use mv to rename a single file."
  homepage ""
  url "https://github.com/bryceac/rext/archive/rext-0.1.tar.gz"
  sha256 "b9c7f357ba67e72ffdaee3f8bfabfce1897308450ccec9e965eba42aae0e2715"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/rext", "--help"
  end
end
