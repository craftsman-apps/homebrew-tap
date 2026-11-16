class Ambit < Formula
  desc "Install, check and validate Ambit, the open-source MCP and LLM gateway"
  homepage "https://ambitproject.dev"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.4.0/ambit_darwin_arm64.tar.gz"
      sha256 "136d08632b3f0e12552c94848e15571ad7a48dcb47ae804b3b115418dea09b1d"
    end
    on_intel do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.4.0/ambit_darwin_amd64.tar.gz"
      sha256 "07ed05a6ee2f725a77cb78a29bbe75a06154aa5b6dfe6cc90ddad27d60e90c9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.4.0/ambit_linux_arm64.tar.gz"
      sha256 "a013126fc588d0c4f7d277bfe716d4810fd37d27f6d4229fde468ae635ab61c5"
    end
    on_intel do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.4.0/ambit_linux_amd64.tar.gz"
      sha256 "460ce919f458cc734eab0872db7b86f20df8085e75921e9f2696c00018417719"
    end
  end

  def install
    bin.install "ambit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ambit version --kubeconfig /dev/null")
  end
end
