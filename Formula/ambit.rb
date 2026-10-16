class Ambit < Formula
  desc "Install, check and validate Ambit, the open-source MCP and LLM gateway"
  homepage "https://ambitproject.dev"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.2.2/ambit_darwin_arm64.tar.gz"
      sha256 "356a61c44ef0caef093ed0465fa3c57fd819c3ace3e8e641a383d2e919fc8875"
    end
    on_intel do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.2.2/ambit_darwin_amd64.tar.gz"
      sha256 "77075a567f5f39b97e9f24e396929addda246d4675e13f6fed34cf03e4d458b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.2.2/ambit_linux_arm64.tar.gz"
      sha256 "9f3ca9bc29dd8b4c86aa2a54d6d0f60c22d28ab471bb2e155239bdeafa47e4af"
    end
    on_intel do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.2.2/ambit_linux_amd64.tar.gz"
      sha256 "8ddd4f30f4a02778d52f620164fe84e4ca3d10d08f3edcc9483f6def9da0d22a"
    end
  end

  def install
    bin.install "ambit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ambit version --kubeconfig /dev/null")
  end
end
