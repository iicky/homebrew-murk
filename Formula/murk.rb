class Murk < Formula
  desc "Encrypted secrets manager for developers"
  homepage "https://github.com/interrupted-inc/murk"
  version "0.11.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/interrupted-inc/murk/releases/download/v#{version}/murk-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "bab7fa49d6c27661f8d81bad493270a1de2ed14ead26c349bb8f72bb941563ef"
    end
    on_arm do
      url "https://github.com/interrupted-inc/murk/releases/download/v#{version}/murk-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "ca3c3560aefbab0d270687fb20f464be8c3aeaef83bb24c8dad142efedfad32f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/interrupted-inc/murk/releases/download/v#{version}/murk-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "59233ec3089ebec24688a6b128f6e716046b3ee7b7a518fae9b3a113e0fef242"
    end
    on_arm do
      url "https://github.com/interrupted-inc/murk/releases/download/v#{version}/murk-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c6d918534d8b55061c09b106c2e41364a883bd877d50c8e293befe85b1069ca"
    end
  end

  def install
    bin.install "murk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murk --version")
  end
end
