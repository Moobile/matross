# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "matross"
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Artur Rodrigues", "Joao Sa"]
  s.date = "2013-08-13"
  s.description = "Our collection of opnionated Capistrano recipes"
  s.email = ["artur.rodrigues@innvent.com.br", "joao.sa@innvent.com.br"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    ".document",
    ".ruby-version",
    "Gemfile",
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "lib/matross.rb",
    "lib/recipes/base.rb",
    "lib/recipes/foreman.rb",
    "lib/recipes/nginx.rb",
    "lib/recipes/templates/nginx_virtual_host_conf.erb",
    "lib/recipes/templates/unicorn.rb.erb",
    "lib/recipes/unicorn.rb",
    "test/helper.rb",
    "test/test_matross.rb"
  ]
  s.homepage = "http://github.com/innvent/matross"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Our collection of opnionated Capistrano recipes"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<capistrano>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.4"])
    else
      s.add_dependency(%q<capistrano>, [">= 0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
    end
  else
    s.add_dependency(%q<capistrano>, [">= 0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.4"])
  end
end

