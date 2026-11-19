# Written by D:/dev_0_claude_tools/release/package-managers.mjs from the SHA256SUMS of cli-v0.4.9
# (built in public: https://github.com/hproxy-com/proxy-all-in-one-tool/releases/tag/cli-v0.4.9). Changes by hand are replaced.
class Hproxy < Formula
  desc "Proxy checker, free proxy list and IP lookup, with an MCP server for AI tools"
  homepage "https://hproxy.com/tools/ai"
  version "0.4.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hproxy-com/proxy-all-in-one-tool/releases/download/cli-v0.4.9/hproxy-cli-macos-arm64"
      sha256 "00f336352e188c0693aaedc30da202cf7f1f9013e8743b1ccea10e32815db386"
    end
    on_intel do
      url "https://github.com/hproxy-com/proxy-all-in-one-tool/releases/download/cli-v0.4.9/hproxy-cli-macos-x86_64"
      sha256 "3571f004bed288059dd38727e10d5df775a063409fbd3e681b3a726b6aeeab07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hproxy-com/proxy-all-in-one-tool/releases/download/cli-v0.4.9/hproxy-cli-linux-arm64"
      sha256 "69d99bb504b8fcfbd5e3cbf1dedafe1598538d1511f85cf6eb6bc379539ac1ec"
    end
    on_intel do
      url "https://github.com/hproxy-com/proxy-all-in-one-tool/releases/download/cli-v0.4.9/hproxy-cli-linux-x86_64"
      sha256 "cb17ed128df2d8e851b2a50fc73d50816aea1a04d19599a3b548cdc579bfd3b4"
    end
  end

  def install
    bin.install Dir["hproxy-cli-*"].first => "hproxy"
  end

  test do
    assert_match "hproxy #{version}", shell_output("#{bin}/hproxy --version")
  end
end
