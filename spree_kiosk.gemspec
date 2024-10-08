# encoding: UTF-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_kiosk/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_kiosk'
  s.version     = SpreeKiosk::VERSION
  s.summary     = "Spree Commerce Kiosk Extension"
  s.required_ruby_version = '>= 3.0'

  s.author    = 'truemark'
  s.email     = 'sushil@truemark.com.np'
  s.homepage  = 'https://github.com/your-github-handle/spree_kiosk'
  s.license = 'BSD-3-Clause'

  s.files       = `git ls-files`.split("\n").reject { |f| f.match(/^spec/) && !f.match(/^spec\/fixtures/) }
  s.require_path = 'lib'
  s.requirements << 'none'

  spree_version = '>= 4.5'
  s.add_dependency 'deface', '~> 1.0'
  s.add_dependency 'spree_api', spree_version
  s.add_dependency 'spree_backend', spree_version
  # s.add_dependency 'spree_frontend', spree_version
  s.add_dependency 'spree_core', spree_version
  s.add_dependency 'spree_extension'
  s.add_dependency 'rqrcode', '~> 2.0'
end
