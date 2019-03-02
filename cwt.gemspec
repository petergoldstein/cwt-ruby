# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cwt/version"

Gem::Specification.new do |spec|
  spec.name          = "cwt"
  spec.version       = CWT::VERSION
  spec.authors       = ["Gonzalo Rodriguez"]
  spec.email         = ["gonzalo@cedarcode.com"]

  spec.summary       = "CBOR Web Token (CWT) ruby library"
  spec.homepage      = "https://github.com/cedarcode/cwt-ruby"
  spec.license       = "MIT"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/cedarcode/cwt-ruby/issues",
    "changelog_uri" => "https://github.com/cedarcode/cwt-ruby/blob/master/CHANGELOG.md",
    "source_code_uri" => "https://github.com/cedarcode/cwt-ruby"
  }

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.4"

  spec.add_runtime_dependency "cbor"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "byebug", "~> 10.0"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "rubocop", "0.58.2"
end
