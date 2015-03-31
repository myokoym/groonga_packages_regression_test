require "groonga_packages_regression_test/subcommand/base"

module GroongaPackagesRegressionTest
  module Subcommand
    class Pull
      include Base

      def run
        run_each_platforms do |platform|
          "sudo docker pull #{platform}"
        end
      end
    end
  end
end
