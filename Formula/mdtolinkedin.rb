class Mdtolinkedin < Formula
  desc "Convert Markdown to LinkedIn-compatible text"
  homepage "https://github.com/juanjecilla/mdtolinkedin-cli"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/juanjecilla/mdtolinkedin-cli/releases/download/v0.1.0/mdtolinkedin-macos-aarch64.tar.gz"
      sha256 "REPLACE_WITH_SHA256"
    end
    on_intel do
      url "https://github.com/juanjecilla/mdtolinkedin-cli/releases/download/v0.1.0/mdtolinkedin-macos-x86_64.tar.gz"
      sha256 "REPLACE_WITH_SHA256"
    end
  end

  on_linux do
    url "https://github.com/juanjecilla/mdtolinkedin-cli/releases/download/v0.1.0/mdtolinkedin-linux-x86_64.tar.gz"
    sha256 "REPLACE_WITH_SHA256"
  end

  def install
    bin.install "mdtolinkedin"
  end

  test do
    assert_match "mdtolinkedin", shell_output("#{bin}/mdtolinkedin --version")
  end
end
