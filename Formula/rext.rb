class Rext < Formula
  desc "tool that can quickly change the extension of many files as simply as it is to use mv to rename a single file."
  homepage ""
  url "https://github.com/bryceac/rext/archive/rext-0.1.tar.gz"
  sha256 "d99b9250f6ce99ab03f641e2fb1f882bbfa9c4cc6a368c1d3d6a52dad1028f8f"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/rext", "--help"
  end
end
