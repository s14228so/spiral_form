$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "spiral_form/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "spiral_form"
  spec.version     = SpiralForm::VERSION
  spec.authors     = ["saongtx7"]
  spec.email       = ["s14228so@sfc.keio.ac.jp"]
  spec.homepage    = "https://github.com/s14228so"
  spec.summary     = "This gem help creating increasing forms"
  spec.description = "This gem is a gem that I made for the first time. This gem will support your rails application"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    #spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end
  spec.files = Dir["{app,config,db,lib,vendor}/**/*","MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails"

end
