require "groonga_packages_regression_test/subcommand/base"

module GroongaPackagesRegressionTest
  module Subcommand
    class Go
      include Base

      def run
        @platforms.each do |platform|
          tag = "groonga_packages_regression_test-#{platform}"
          system("sudo docker run -t #{tag}")
        end
      end
    end
  end
end
