class Mdtolinkedin < Formula
  desc "Convert Markdown to LinkedIn-compatible text"
  homepage "https://github.com/juanjecilla/mdtolinkedin-cli"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/juanjecilla/mdtolinkedin-cli/releases/download/v0.1.0/mdtolinkedin-macos-aarch64.tar.gz"
      sha256 "831b0d947fd7287984d72dd9bd613590bd3d39261d2347c4256d34c5fd142644"
    end
    on_intel do
      url "https://github.com/juanjecilla/mdtolinkedin-cli/releases/download/v0.1.0/mdtolinkedin-macos-x86_64.tar.gz"
      sha256 "7b3e1c84c2a688e4d7c693387748f99252cdc9a0dc5c22cb320aab9e5d87a7ec"
    end
  end

  on_linux do
    url "https://github.com/juanjecilla/mdtolinkedin-cli/releases/download/v0.1.0/mdtolinkedin-linux-x86_64.tar.gz"
    sha256 "5b948ea879af9892cb4cf134239c8ca1760580514a59ffb791f4461b49923078"
  end

  def install
    bin.install "mdtolinkedin"
  end

  test do
    assert_match "mdtolinkedin", shell_output("#{bin}/mdtolinkedin --version")
  end
end
