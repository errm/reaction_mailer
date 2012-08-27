# -*- encoding: utf-8 -*-
require File.expand_path('../lib/reaction_mailer/version', __FILE__)
require "base64"

Gem::Specification.new do |gem|
  gem.authors       = ["Ed Robinson"]
  gem.email         = Base64.decode64("ZWQucm9iaW5zb25AcmVldm9vLmNvbQ==\n")
  gem.description   = %q{Reaction Mailer}
  gem.summary       = %q{Sends emails put on ice by Inaction Mailer}
  gem.homepage      = "https://github.com/errm/reaction_mailer"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "reaction_mailer"
  gem.require_paths = ["lib"]
  gem.version       = ReactionMailer::VERSION

  gem.add_dependency('highline', '>= 1.6.14')
  gem.add_dependency('mail', '>= 2.4.4')
end
