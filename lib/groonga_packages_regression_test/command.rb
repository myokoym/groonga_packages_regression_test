require "thor"
require "groonga_packages_regression_test/platform"
require "groonga_packages_regression_test/subcommand"

module GroongaPackagesRegressionTest
  class Command < Thor
    desc "pull", "Pull Docker images"
    def pull
      Subcommand::Pull.new(Platform::NAMES).run
    end

    desc "install", "Install Groonga packages"
    def install
      Subcommand::Install.new(Platform::NAMES).run
    end

    desc "go", "Run regression tests"
    def go
      Subcommand::Go.new(Platform::NAMES).run
    end
  end
end
