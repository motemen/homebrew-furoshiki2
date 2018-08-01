class Furoshiki2 < Formula
  include Language::Python::Virtualenv

  homepage "https://github.com/motemen/furoshiki2"
  head "https://github.com/motemen/furoshiki2.git"

  depends_on "python3"

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/9e/a3/1d13970c3f36777c583f136c136f804d70f500168edc1edea6daa7200769/PyYAML-3.13.tar.gz"
    sha256 "3ef3092145e9b70e3ddd2c7ad59bdd0252a94dfe3949721633e41344de00a6bf"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/furo2", "version"
  end
end
