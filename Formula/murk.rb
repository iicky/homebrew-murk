class Murk < Formula
  desc "Encrypted secrets manager for developers"
  homepage "https://github.com/iicky/murk"
  version "0.5.8"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/iicky/murk/releases/download/v#{version}/murk-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "6251bd68d4f9fdea5469aae2d258d05acb60fd6c0349c0832e3e22d63dc67b99"
    end
    on_arm do
      url "https://github.com/iicky/murk/releases/download/v#{version}/murk-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0afdd243630087239d4de8884e9017d91221db412885c5f35412de5b734099a2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/iicky/murk/releases/download/v#{version}/murk-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f01cfe28e407b5ad883020ca37546d0593eea65ba79a7cd3af9cd8f8fc0f4e22"
    end
    on_arm do
      url "https://github.com/iicky/murk/releases/download/v#{version}/murk-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56e585ecf20017b7de8bd8a9dc9772c8fbcd3cf155206eb32f058044bb89a213"
    end
  end

  def install
    bin.install "murk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murk --version")
  end
end
