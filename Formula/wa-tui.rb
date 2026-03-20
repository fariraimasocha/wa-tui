class WaTui < Formula
  desc "Terminal UI for WhatsApp Web"
  homepage "https://github.com/gtchakama/wa-tui"
  url "https://registry.npmjs.org/@gtchakama/wa-tui/-/wa-tui-1.4.0.tgz"
  sha256 "fa475b510dccc60dae1588def04ee6d1f3625e2d0d7df62a38f82c20944f2a94"
  license "ISC"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_predicate bin/"wa-tui", :executable?
  end
end
