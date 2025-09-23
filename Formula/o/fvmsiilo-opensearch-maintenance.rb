class FvmsiiloOpensearchMaintenance < Formula
  desc "Open source distributed and RESTful search engine"
  homepage "https://opensearch.org/docs/latest/opensearch/index/"
  url "https://github.com/opensearch-project/OpenSearch/archive/refs/tags/2.13.0.tar.gz"
  sha256 "5cdac814f233df2c98e2f65662e803cc36dcf665ce20eaaea0dd43059f27a2fb"
  license "Apache-2.0"

  # Bottle command from the original formula, commented out to avoid errors during installation
  # src: https://github.com/Homebrew/homebrew-core/blob/612d344b687429b20b2e23e60c4b6f6d57327b21/Formula/o/opensearch.rb
  # bottle do
  #  sha256 cellars here
  # end

  depends_on "gradle" => :build
  depends_on "openjdk"

  def install
    # Remove unrecognized options if they cause configure to fail
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "./configure", "--disable-silent-rules", *std_configure_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test fvmsiilo-opensearch-maintenance`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end
