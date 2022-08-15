# frozen_string_literal: true

require_relative "lib/clidex/version"

Gem::Specification.new do |spec|
  spec.name = "clidex"
  spec.version = Clidex::VERSION
  spec.authors = ["Lucas Falbo"]
  spec.email = ["95.lucas@gmail.com"]

  spec.summary = "Simple CLI app to consume poke-api-v2"
  spec.homepage = "https://github.com/kepa/cli-dex"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://github.com/kepa/cli-dex"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/kepa/cli-dex"
  spec.metadata["changelog_uri"] = "https://github.com/kepa/cli-dex"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "image2ascii", "~> 1.1.4"
  spec.add_dependency "poke-api-v2", "~> 0.1.1"
  spec.add_dependency "rmagick", "~> 4.2.6"
  spec.add_dependency "thor", "~> 1.2.1"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
