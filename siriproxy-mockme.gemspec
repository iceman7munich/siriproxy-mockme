# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "siriproxy-mockme"
  s.version     = "1.0.0" 
  s.authors     = ["Red Haze"]
  s.email       = ["redhaze3323@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Copy cat!}
  s.description = %q{Siri now copys everything you say until you ask her to stop!}

  s.rubyforge_project = "siriproxy-mockme"

  s.files         = `git ls-files 2> /dev/null`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/* 2> /dev/null`.split("\n")
  s.executables   = `git ls-files -- bin/* 2> /dev/null`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
