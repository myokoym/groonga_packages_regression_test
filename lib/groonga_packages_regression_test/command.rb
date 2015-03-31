require "thor"
require "groonga_packages_regression_test/platform"
require "groonga_packages_regression_test/subcommand/pull"

module GroongaPackagesRegressionTest
  class Command < Thor
    desc "pull", "Pull Docker images"
    def pull
      Subcommand::Pull.new(Platform::NAMES).run
    end

    desc "install", "Install Groonga packages"
    def install
      # TODO
    end

    desc "go", "Run regression tests"
    def go
      # TODO
    end
  end
end
