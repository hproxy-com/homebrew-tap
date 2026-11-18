# Written by D:/dev_0_claude_tools/release/package-managers.mjs from the SHA256SUMS of cli-v0.4.8
# (built in public: https://github.com/hproxy-com/proxy-all-in-one-tool/releases/tag/cli-v0.4.8). Changes by hand are replaced.
class Hproxy < Formula
  desc "Proxy checker, free proxy list and IP lookup, with an MCP server for AI tools"
  homepage "https://hproxy.com/tools/ai"
  version "0.4.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hproxy-com/proxy-all-in-one-tool/releases/download/cli-v0.4.8/hproxy-cli-macos-arm64"
      sha256 "a599bd66931386fdbbba4475c0414f9cf19e67015e3e8b66c00f348815e08a71"
    end
    on_intel do
      url "https://github.com/hproxy-com/proxy-all-in-one-tool/releases/download/cli-v0.4.8/hproxy-cli-macos-x86_64"
      sha256 "a9a7b3194188f8e3fdda5c4a690706b50eb5e2ca987685d81e34aa3c3d0d248e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hproxy-com/proxy-all-in-one-tool/releases/download/cli-v0.4.8/hproxy-cli-linux-arm64"
      sha256 "ed9e4acd42e12ada6d4d8a17898b4b8a79f706c5755ffd4ec0373839bd8b1401"
    end
    on_intel do
      url "https://github.com/hproxy-com/proxy-all-in-one-tool/releases/download/cli-v0.4.8/hproxy-cli-linux-x86_64"
      sha256 "d6fd2a8ff488d6f8c3a77fd8c8b8b8e8683e44aad42b82cf72dcb9cee10fd130"
    end
  end

  def install
    bin.install Dir["hproxy-cli-*"].first => "hproxy"
  end

  test do
    assert_match "hproxy #{version}", shell_output("#{bin}/hproxy --version")
  end
end
