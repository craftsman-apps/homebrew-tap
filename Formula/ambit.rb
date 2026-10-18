class Ambit < Formula
  desc "Install, check and validate Ambit, the open-source MCP and LLM gateway"
  homepage "https://ambitproject.dev"
  version "0.2.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.2.3/ambit_darwin_arm64.tar.gz"
      sha256 "83c5f21c4ca8d896fe458fc4f3f3ca331896e4e70e9048f8e328d10d3f176caa"
    end
    on_intel do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.2.3/ambit_darwin_amd64.tar.gz"
      sha256 "fd5a889622cd04f5f90ce3547defdeea39f7f35f79117cb0b2b3dcfbe7fd1909"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.2.3/ambit_linux_arm64.tar.gz"
      sha256 "2ae9592689b9eb2a84599ffe55e13f4a60c3a221b6f5bedcdcdffd403e50f59f"
    end
    on_intel do
      url "https://github.com/craftsman-apps/ambit/releases/download/v0.2.3/ambit_linux_amd64.tar.gz"
      sha256 "a8eaa23c56a56405272fcaafb240260a19b3badabfb315385bd9314fabe0c4a0"
    end
  end

  def install
    bin.install "ambit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ambit version --kubeconfig /dev/null")
  end
end
