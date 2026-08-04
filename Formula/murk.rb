class Murk < Formula
  desc "Encrypted secrets manager for developers"
  homepage "https://github.com/interrupted-inc/murk"
  version "0.10.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/interrupted-inc/murk/releases/download/v#{version}/murk-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "1327cd58de30ba5a0bff4504c1c198d148456ea78ad66a933a4c6c836c924c3d"
    end
    on_arm do
      url "https://github.com/interrupted-inc/murk/releases/download/v#{version}/murk-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "3b6a7d44bd7f8093de4cf287ba3cbabb1b3b0077d25e71eb038590a353baa435"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/interrupted-inc/murk/releases/download/v#{version}/murk-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "50c4f058741b964a57995e3dfa92f0ecefbc338a5a25978a930b4a2cf11fd7fe"
    end
    on_arm do
      url "https://github.com/interrupted-inc/murk/releases/download/v#{version}/murk-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "64d486b7a42c904c6ca0c0ac201dcec81a9fbeae5c44b6a5832f82c1fe361db8"
    end
  end

  def install
    bin.install "murk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murk --version")
  end
end
