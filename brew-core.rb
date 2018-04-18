# Template for brew-core
# The brew core maintainers work very hard to ensure uniformity, and formulas that were accepted in the past might not be accepted today.
# Your Rust project can be included in brew IF: 
#    It is: 30 days old AND has (50 stars OR 20 forks OR 20 watchers)
# Below is a template for the brew formula for adding to homebrew/core. I've called out frequent causes of CR feedback when
# repos are submitted to brew. If you get this all right on the first try, hopefully you can avoid a lot of back and forth.
# Start with `brew create https://...path/to/source.tar.gz` (Easiest to just push a tag to GitHub), then ensure the resulting 
# formula matches this file exactly.
# It's also helpful to follow along with https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
# Every instance of YYYY is something that must be changed.
class YYYY < Formula
  desc "YYYY description YYYY"
  homepage "YYYY"
  url "YYYY Autofilled by brew create YYYY"
  sha256 "YYYY autofilled by brew create YYYY"

  depends_on "rust" => :build # Newlines surrounding `depends_on` is required.

  def install
    system "cargo", "install", "--root", prefix
  end

  test do
    # YYYY write a test that actually tests that your software is running. Do not run something like `--version`
    # YYYY If your program reads files, read a file, then use `assert_match` to ensure that the output reflects the 
    # YYYY contents of the file
    # Example below:
    (testpath/"logs.txt").write("{\"key\": 5}")
    assert_match "[key=5]", shell_output("#{bin}/agrind --file logs.txt '* | json'")
  end
end
