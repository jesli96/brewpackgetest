class Brewpackgetest < Formula
  desc "A Spring Boot application"
  homepage "https://github.com/jesli96/homebrew-brewpackgetest"
  url "https://github.com/jesli96/homebrew-brewpackgetest/releases/download/1.0/updatedep-0.0.1-SNAPSHOT.jar"
  sha256 “6344a98f3ba9c728c4114c9249f1b9db210851b646d36a9f9a418780b3526193”
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install "updatedep-0.0.1-SNAPSHOT.jar"
    bin.write_jar_script libexec/"updatedep-0.0.1-SNAPSHOT.jar", "brewpackgetest"
  end

  test do
    system "#{bin}/brewpackgetest", "--version"
  end
end
