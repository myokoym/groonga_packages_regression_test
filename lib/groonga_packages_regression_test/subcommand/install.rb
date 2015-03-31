require "fileutils"
require "tmpdir"
require "groonga_packages_regression_test/subcommand/base"

module GroongaPackagesRegressionTest
  module Subcommand
    class Install
      include Base

      def run
        @platforms.each do |platform|
          tag = "groonga_packages_regression_test-#{platform}"
          Dir.mktmpdir(tag) do |dir|
            FileUtils.cd(dir) do
              system("dockerfiroonga #{platform} > Dockerfile")
              system("sudo docker build -no-cache -t #{tag} .")
            end
          end
        end
      end
    end
  end
end
