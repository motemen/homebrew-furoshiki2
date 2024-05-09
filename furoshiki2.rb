class Furoshiki2 < Formula
  include Language::Python::Virtualenv

  homepage "https://github.com/motemen/furoshiki2"
  head "https://github.com/motemen/furoshiki2.git"

  depends_on "python3"

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/cd/e5/af35f7ea75cf72f2cd079c95ee16797de7cd71f29ea7c68ae5ce7be1eda0/PyYAML-6.0.1.tar.gz"
    sha256 "bfdf460b1736c775f2ba9f6a92bca30bc2095067b8a9d77876d1fad6cc3b4a43"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/furo2", "version"
  end
end
