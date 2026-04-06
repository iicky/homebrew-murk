class Murk < Formula
  desc "Encrypted secrets manager for developers"
  homepage "https://github.com/iicky/murk"
  version "0.5.6"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/iicky/murk/releases/download/v#{version}/murk-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "fb1aa05822fc9f95e6f32641bce08e57afb8d2fda7cb6319fa49168bba8836d8"
    end
    on_arm do
      url "https://github.com/iicky/murk/releases/download/v#{version}/murk-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "fc465e9247420ef080c8908680c81d4a6c30c911723531c80291ff0ff1ec1a54"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/iicky/murk/releases/download/v#{version}/murk-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "845e47bae4072b86acc3e8dad6b9a352b1f35b72f4828346a77adde89c58058a"
    end
    on_arm do
      url "https://github.com/iicky/murk/releases/download/v#{version}/murk-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "df4e30b4a2ff2ed557e1dcadabbe8c805f8d3d49a585cbf88db35bfa33c0d5e4"
    end
  end

  def install
    bin.install "murk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murk --version")
  end
end
