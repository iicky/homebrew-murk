class Murk < Formula
  desc "Encrypted secrets manager for developers"
  homepage "https://github.com/iicky/murk"
  version "0.3.4"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/iicky/murk/releases/download/v#{version}/murk-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "3ce7e0282387a160f3d1818dc1778dd1b2ffbed19da6d2f11848b497906d082d"
    end
    on_arm do
      url "https://github.com/iicky/murk/releases/download/v#{version}/murk-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a0be34eb94d5a2ca3912357dfeee2858db05ed8c7b9df1e4ceeeb6569cc07ee2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/iicky/murk/releases/download/v#{version}/murk-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "716608e30f722344c61b3fb09b4a82028a513894895795ff861cbd59a678f86e"
    end
    on_arm do
      url "https://github.com/iicky/murk/releases/download/v#{version}/murk-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "459558dde2f500ac6574df2f2b940a5411ce7a97d04ecaca50757cd249347bf8"
    end
  end

  def install
    bin.install "murk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murk --version")
  end
end
