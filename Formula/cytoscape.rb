class Cytoscape < Formula
  desc "Open source platform for network analysis and visualization"
  homepage "http://www.cytoscape.org/"
  url "https://github.com/cytoscape/cytoscape/releases/download/3.7.1/cytoscape-3.7.1.tar.gz"
  sha256 "1311386b19b565e5a2cf627318b5a2641492de07051dc9c1a1bcbdc5d7b31ad6"

  depends_on :java => "1.8"

  def install
    inreplace "cytoscape.sh", "$script_path", libexec
    libexec.install Dir["*"]
    bin.install_symlink libexec/"cytoscape.sh" => "cytoscape"
  end

  test do
    system bin/"cytoscape", "--version"
  end
end
