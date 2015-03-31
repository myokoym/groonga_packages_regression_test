require "stringio"

module GroongaPackagesRegressionTest
  module Util
    def setup_stdio
      @stdout_string = ""
      @stderr_string = ""
      stdout_io = StringIO.new(@stdout_string)
      stderr_io = StringIO.new(@stderr_string)
      $stdout = stdout_io
      $stderr = stderr_io
    end

    def teardown_stdio
      $stdout = STDOUT
      $stderr = STDERR
    end
  end
end
