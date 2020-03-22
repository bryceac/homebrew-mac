class Rext < Formula
  desc "tool that can quickly change the extension of many files as simply as it is to use mv to rename a single file."
  homepage ""
  url "https://github.com/bryceac/rext/archive/rext-0.1.tar.gz"
  sha256 "f5bd09489e397f15d5e0f885c241a79cc90d83805f08afbfca605e29759b921c"

  depends_on :xcode => ["11.0", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/rext", "--help"
  end
end
