class Ambit < Formula
  desc "Install, check and validate Ambit, the open-source MCP and LLM gateway"
  homepage "https://ambitproject.dev"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.3.0/ambit_darwin_arm64.tar.gz"
      sha256 "6d5d9660cf69bb682ffe982ffbeda028b50caab5c7d8fc0a4ae444f61b096c99"
    end
    on_intel do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.3.0/ambit_darwin_amd64.tar.gz"
      sha256 "b27f2a9979b10d7d7a7cc27225be11f8f12ad202a7816421f354b39f80d6ec5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.3.0/ambit_linux_arm64.tar.gz"
      sha256 "919279807e1f0ce695b74e86f59eec2c2e0b46a6fcde620a9ffd7e2d00540383"
    end
    on_intel do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.3.0/ambit_linux_amd64.tar.gz"
      sha256 "8813cf9f4ec3d6fda204e8117831b23a621143a0ad0859614259c62cfe7fc653"
    end
  end

  def install
    bin.install "ambit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ambit version --kubeconfig /dev/null")
  end
end
