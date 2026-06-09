class Dogctl < Formula
  desc "Official CLI for managing Rackdog bare-metal servers"
  homepage "https://github.com/rackdog/dogctl"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rackdog/dogctl/releases/download/v#{version}/dogctl_#{version}_darwin_arm64.tar.gz"
      sha256 "REPLACE"
    end
    on_intel do
      url "https://github.com/rackdog/dogctl/releases/download/v#{version}/dogctl_#{version}_darwin_amd64.tar.gz"
      sha256 "REPLACE"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rackdog/dogctl/releases/download/v#{version}/dogctl_#{version}_linux_arm64.tar.gz"
      sha256 "REPLACE"
    end
    on_intel do
      url "https://github.com/rackdog/dogctl/releases/download/v#{version}/dogctl_#{version}_linux_amd64.tar.gz"
      sha256 "REPLACE"
    end
  end

  def install
    bin.install "dogctl"
    generate_completions_from_executable(bin/"dogctl", "completion")
  end

  test do
    system "#{bin}/dogctl", "--version"
  end
end
