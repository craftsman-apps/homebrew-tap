class Ambit < Formula
  desc "Install, check and validate Ambit, the open-source MCP and LLM gateway"
  homepage "https://ambitproject.dev"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.2.1/ambit_darwin_arm64.tar.gz"
      sha256 "6394013adf02244173a72375db9276b235abc3397ce6f656bbff57e8b3e09234"
    end
    on_intel do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.2.1/ambit_darwin_amd64.tar.gz"
      sha256 "5d804166cfeb7f23a59488fffb7667ec69f952075ede5b618e6f9fa311b37c1d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.2.1/ambit_linux_arm64.tar.gz"
      sha256 "82f45e4b4e7ed59180d3b21a94996e133b22c7c22300f3c9568f86206dd0a0f7"
    end
    on_intel do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.2.1/ambit_linux_amd64.tar.gz"
      sha256 "cba3524f9c819f10cb45ee2e4dc60730d47ffed1f7a2c2b60ee14c542b52e08d"
    end
  end

  def install
    bin.install "ambit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ambit version --kubeconfig /dev/null")
  end
end
