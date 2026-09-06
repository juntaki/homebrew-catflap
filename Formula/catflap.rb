class Catflap < Formula
  desc "Ephemeral capability gateway for AI agents: lend a machine, not a credential."
  homepage "https://github.com/juntaki/catflap"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/juntaki/catflap/releases/download/v0.3.0/catflap_0.3.0_darwin_arm64.tar.gz"
      sha256 "5e9c29631b6871400b14dc473e9f2f51c291358f4eb3e1510787741cd2f3c5cf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/juntaki/catflap/releases/download/v0.3.0/catflap_0.3.0_linux_amd64.tar.gz"
      sha256 "bb14f3798abd696353cba49347b149ae4313957ee3fae7bac8baad9b85740816"
    end
    on_arm do
      url "https://github.com/juntaki/catflap/releases/download/v0.3.0/catflap_0.3.0_linux_arm64.tar.gz"
      sha256 "aaa6496a303b033d3b20a36cf9af0a380d27a3b9f7ea29b1c196f584b0608e0e"
    end
  end

  def install
    bin.install "catflap"
  end

  test do
    system "#{bin}/catflap", "version"
  end
end
