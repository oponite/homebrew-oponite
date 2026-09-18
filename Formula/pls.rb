class Pls < Formula
  desc "Precise, Lean, Streamlined (pls) skill"
  homepage "https://github.com/vijayneelakantan/precise-lean-streamlined"
  # The installer script that puts the `pls` executable on the PATH
  url "https://raw.githubusercontent.com/vijayneelakantan/precise-lean-streamlined/main/install-pls.sh"
  version "0.1.0"
  sha256 "f31bf8ec1a08c8d4c12a7adaea84476fc6b6856e8a5464ee548d24b82632d715"

  def install
    # Install the script as an executable named `pls`
    bin.install "install-pls.sh" => "pls"
    # Ensure it is executable
    chmod 0755, bin/"pls"
  end

  test do
    # Basic sanity check – the command should exist and print a help/usage line
    # The script exits with status 1 when `--help` is not supplied, so we capture the output
    output = shell_output("#{bin}/pls --help 2>&1", 1)
    assert_match "usage", output.downcase
  end
end
