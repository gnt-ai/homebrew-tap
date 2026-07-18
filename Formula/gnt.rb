class Gnt < Formula
  desc "Command-line client for gnt.ai — connect apps, propose rules, query your brain"
  homepage "https://gnt.ai"
  url "https://registry.npmjs.org/@gnt-ai/cli/-/cli-0.4.1.tgz"
  sha256 "776e0197c7ff4d7297385fc36213a7d933b741e525914e6eb38028008204c877"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "Usage", shell_output("#{bin}/gnt --help")
  end
end
