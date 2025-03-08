# frozen_string_literal: true

require_relative "lib/iic2143_reporter/version"

Gem::Specification.new do |spec|
  spec.name = "iic2143_reporter"
  spec.version = Iic2143Reporter::VERSION
  spec.authors = ["jtvaldivia"]
  spec.email = ["jvaldivia@buk.cl"]

  spec.summary = "Generador de reportes HTML para tests IIC2143"
  spec.description = "Gem for creation of HTML reports of grades tester  fow now in IIC2143"
  spec.homepage    = "https://github.com/tu-usuario/iic2143_reporter"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"




  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
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

