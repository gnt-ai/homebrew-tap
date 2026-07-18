class Gnt < Formula
  desc "Command-line client for gnt.ai — connect apps, propose rules, query your brain"
  homepage "https://gntai.dev"
  url "https://registry.npmjs.org/@gnt-ai/cli/-/cli-0.5.0.tgz"
  sha256 "1edb244b852745d76039b7b48ad129d605e3b2ad5ac584b548a5ad8000e1a8a6"
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
