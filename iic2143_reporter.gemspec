# frozen_string_literal: true

require_relative "lib/iic2143_reporter/version"

Gem::Specification.new do |spec|
  spec.name = "iic2143_reporter"
  spec.version = Iic2143Reporter::VERSION
  spec.authors = ["jtvaldivia"]
  spec.email = ["josevaldivia9@gmail.com"]

  spec.summary = "[DEPRECATED] HTML report generator for IIC2143 tests"
  spec.description = "This gem is deprecated and has been replaced by 'ruby_test_student_grader'. The new name is clearer and future maintenance and improvements will happen there. You can still use this gem, but we strongly recommend migrating. More info: https://rubygems.org/gems/ruby_test_student_grader"
  spec.homepage    = "https://github.com/tu-usuario/iic2143_reporter"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.post_install_message = <<~MSG
    [DEPRECATION] 'iic2143_reporter' is deprecated and has been replaced by 'ruby_test_student_grader'.
    Reason: the new name is clearer; active development continues in the new gem.
    Please migrate when you can:
      gem install ruby_test_student_grader
    Learn more: https://rubygems.org/gems/ruby_test_student_grader
  MSG

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  # iic2143_reporter.gemspec
  spec.files = Dir["lib/**/*.rb", "lib/**/*.erb", "README.md"]
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
