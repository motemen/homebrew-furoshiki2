class Furoshiki2 < Formula
  include Language::Python::Virtualenv

  homepage "https://github.com/motemen/furoshiki2"
  head "https://github.com/motemen/furoshiki2.git"

  depends_on "python3"

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/a0/a4/d63f2d7597e1a4b55aa3b4d6c5b029991d3b824b5bd331af8d4ab1ed687d/PyYAML-5.4.1.tar.gz"
    sha256 "607774cbba28732bfa802b54baa7484215f530991055bb562efbed5b2f20a45e"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/furo2", "version"
  end
end
