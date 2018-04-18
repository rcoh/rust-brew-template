# 1. Place this file inside of `pkg/brew` (name isn't important). The name of the file is the name of the 
#    formula
# 2. Create a symlink from the root directory named `HomebrewFormula` to `pkg/brew`
# 3. Replace all instances of YYYY
# 4. Install with:
#$ brew tap owner/repo https://github.com/owner/repo.git
#$ brew install name-of-formula
class YYYYBin < Formula
  version 'YYYY'
  desc "YYYY"
  homepage "YYYY"

  if OS.mac?
      # URL format assumes you're using https://github.com/japaric/trust to generate binaries
      url "https://github.com/YYYY/releases/download/#{version}/YYYY-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "YYYY"
  elsif OS.linux?
      url "https://github.com/YYYY/releases/download/#{version}/YYYY-#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "YYYY"
  end

  def install
    # Name of the binary
    bin.install "YYYY"
  end
end
