class Ambit < Formula
  desc "Install, check and validate Ambit, the open-source MCP and LLM gateway"
  homepage "https://ambitproject.dev"
  version "0.5.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.5.0/ambit_darwin_arm64.tar.gz"
      sha256 "84c5537eea73bdb475c6067125b192495bf981a51c6f89115f1c67c701c75b37"
    end
    on_intel do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.5.0/ambit_darwin_amd64.tar.gz"
      sha256 "4efa61a1cb91a366ad3cbee1d96f8ad1087f34e9cb170c0e5200fc73763be75f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.5.0/ambit_linux_arm64.tar.gz"
      sha256 "58853bd6886e940af9b8bfba7fdd260e4a44740e89160c784bfddd803ff3c85f"
    end
    on_intel do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.5.0/ambit_linux_amd64.tar.gz"
      sha256 "8a566941e2b7fd0558a61583895666cdcfb78c70ab26bdcdbdbfd135e0c76194"
    end
  end

  def install
    bin.install "ambit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ambit version --kubeconfig /dev/null")
  end
end
