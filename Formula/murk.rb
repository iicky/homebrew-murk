class Murk < Formula
  desc "Encrypted secrets manager for developers"
  homepage "https://github.com/interrupted-inc/murk"
  version "0.10.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/interrupted-inc/murk/releases/download/v#{version}/murk-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "0658239614f95e17b85f40cae014c209c5c64d751e65606ddae791dedaf362c7"
    end
    on_arm do
      url "https://github.com/interrupted-inc/murk/releases/download/v#{version}/murk-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "33d4ef5c4a7e57f58810012ec4f1041945ed4988983c39b8c493cc1edb0842d7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/interrupted-inc/murk/releases/download/v#{version}/murk-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f029b6a97c5ec18c9600ceb4d775e373f76467cd55be92874e1f72e9f2d0eafa"
    end
    on_arm do
      url "https://github.com/interrupted-inc/murk/releases/download/v#{version}/murk-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9214dc4277963949ffad5cadd64c620b2abbc48ce500f67cae432bba87cd93c8"
    end
  end

  def install
    bin.install "murk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murk --version")
  end
end
