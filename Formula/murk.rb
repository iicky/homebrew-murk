class Murk < Formula
  desc "Encrypted secrets manager for developers"
  homepage "https://github.com/iicky/murk"
  version "0.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/iicky/murk/releases/download/v#{version}/murk-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "4f06843ac6a68ee1e29d2e549cd65cc904f8ca6c5fe797c20e07f3d47997cbd6"
    end
    on_arm do
      url "https://github.com/iicky/murk/releases/download/v#{version}/murk-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "56a3eed3e28eb8a6c115b23a0d243c35e07c85a3fcdc76c37ebac42345084ed9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/iicky/murk/releases/download/v#{version}/murk-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b33b9ad46cf1bffec05a177538291570d33b90b9d48d54eabb2e0c63a40f55f"
    end
    on_arm do
      url "https://github.com/iicky/murk/releases/download/v#{version}/murk-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e799a64f6c957f0b9e1b2326244f0bea6baf9c0e4038a78e289fa823b871c6d5"
    end
  end

  def install
    bin.install "murk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murk --version")
  end
end
