require "groonga_packages_regression_test/subcommand/base"

module GroongaPackagesRegressionTest
  module Subcommand
    class Go
      include Base

      def run
        @platforms.each do |platform|
          tag = "groonga_packages_regression_test-#{platform}"
          puts("-----#{tag}-----")
          system("sudo docker run -t #{tag}")
          puts("---------------------------------------------------")
        end
      end
    end
  end
end
