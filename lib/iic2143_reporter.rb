# frozen_string_literal: true

require_relative "iic2143_reporter/version"
require_relative "iic2143_reporter/reporter"

module IIC2143Reporter
  class Error < StandardError; end
  # Your code goes here...
end

# Deprecation notice at require-time (printed once per process)
unless defined?(IIC2143_REPORTER_DEPRECATION_WARNED)
  IIC2143_REPORTER_DEPRECATION_WARNED = true
  warn <<~MSG
    [DEPRECATION] 'iic2143_reporter' is deprecated and has been replaced by 'ruby_test_student_grader'.
    Reason: clearer name; active development continues in the new gem.
    Please migrate when you can: gem install ruby_test_student_grader
    Learn more: https://rubygems.org/gems/ruby_test_student_grader
  MSG
end
