require "groonga_packages_regression_test/subcommand/pull"

class PullTest < Test::Unit::TestCase
  include GroongaPackagesRegressionTest
  include Util

  def setup
    setup_stdio
    @pull = Subcommand::Pull.new(["debian"])
  end

  def teardown
    teardown_stdio
  end

  def test_new
    assert_not_nil(@pull)
  end
end
