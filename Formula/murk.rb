class Murk < Formula
  desc "Encrypted secrets manager for developers"
  homepage "https://github.com/iicky/murk"
  version "0.5.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/iicky/murk/releases/download/v#{version}/murk-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "0e8b336e748818796e53ccb971d01f1484f96212eab40b764b9ff9d0ae09c374"
    end
    on_arm do
      url "https://github.com/iicky/murk/releases/download/v#{version}/murk-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "b628e5c2ad3d9f3ca03841ad0eec8caee70bc43d97ccd762b432f2551d30b6a6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/iicky/murk/releases/download/v#{version}/murk-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "217558e6580500079a176e3484601bb92ef02e7fe699e5027852bbd4e71d21cd"
    end
    on_arm do
      url "https://github.com/iicky/murk/releases/download/v#{version}/murk-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b2fd5428a7e9787711c830aec6f995613b493124d61334d166c170b19ad80cca"
    end
  end

  def install
    bin.install "murk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murk --version")
  end
end
