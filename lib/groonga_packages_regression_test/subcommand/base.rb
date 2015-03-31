module GroongaPackagesRegressionTest
  module Subcommand
    module Base
      def initialize(platforms)
        @platforms = platforms
      end

      def run_each_platforms
        commands = []
        @platforms.each do |platform|
          commands << yield(platform)
        end
        command = commands.join(" && ")
        system(command)
      end
    end
  end
end
