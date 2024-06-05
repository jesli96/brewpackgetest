class Brewpackgetest < Formula
  desc "A Spring Boot application"
  homepage "https://github.com/jesli96/homebrew-brewpackgetest"
  url "https://github.com/jesli96/homebrew-brewpackgetest/releases/download/1.0/updatedep-0.0.1-SNAPSHOT.jar"
  # version "1.0"
  sha256 "6344A98F3BA9C728C4114C9249F1B9DB210851B646D36A9F9A418780B3526193"
  license "MIT"

  depends_on "openjdk"

  def install
    libexec.install "updatedep-0.0.1-SNAPSHOT.jar"
    bin.write_jar_script libexec/"updatedep-0.0.1-SNAPSHOT.jar", "brewpackgetest"
    # libexec.install "updatedep-0.0.1-SNAPSHOT.jar"
    # (bin/"homebrew-brewpackgetest").write <<~EOS
    #   #!/bin/bash
    #   exec "#{Formula["openjdk"].opt_bin}/java" -jar "#{libexec}/updatedep-0.0.1-SNAPSHOT.jar" "$@"
    EOS
  end

  test do
    system "#{bin}/brewpackgetest", "--version"
  end
end
