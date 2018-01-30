class Furoshiki2 < Formula
  include Language::Python::Virtualenv

  homepage "https://github.com/motemen/furoshiki2"
  head "https://github.com/motemen/furoshiki2.git"

  depends_on "python3"

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/4a/85/db5a2df477072b2902b0eb892feb37d88ac635d36245a72a6a69b23b383a/PyYAML-3.12.tar.gz"
    sha256 "592766c6303207a20efc445587778322d7f73b161bd994f227adaa341ba212ab"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/furo2", "version"
  end
end
