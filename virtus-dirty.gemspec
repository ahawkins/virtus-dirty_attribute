# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "virtus-dirty"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jingwen Owen Ou"]
  s.date = "2012-01-10"
  s.description = "Add dirty tracking of attributes to your ruby objects"
  s.email = ["jingweno@gmail.com"]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.rdoc"
  ]
  s.files = [
    ".gitignore",
    ".rspec",
    "Gemfile",
    "LICENSE",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "lib/virtus/dirty_tracking.rb",
    "lib/virtus/dirty_tracking/session.rb",
    "lib/virtus/dirty_tracking/version.rb",
    "spec/integration/attributes/array_spec.rb",
    "spec/integration/attributes/boolean_spec.rb",
    "spec/integration/attributes/date_spec.rb",
    "spec/integration/attributes/date_time_spec.rb",
    "spec/integration/attributes/decimal_spec.rb",
    "spec/integration/attributes/float_spec.rb",
    "spec/integration/attributes/hash_spec.rb",
    "spec/integration/attributes/integer_spec.rb",
    "spec/integration/attributes/string_spec.rb",
    "spec/integration/attributes/time_spec.rb",
    "spec/integration/shared/dirty_trackable_attribute.rb",
    "spec/spec_helper.rb",
    "virtus-dirty.gemspec"
  ]
  s.homepage = "https://github.com/jingweno/virtus-dirty"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "Add dirty tracking of attributes to your ruby objects"
  s.test_files = ["spec/integration/attributes/array_spec.rb", "spec/integration/attributes/boolean_spec.rb", "spec/integration/attributes/date_spec.rb", "spec/integration/attributes/date_time_spec.rb", "spec/integration/attributes/decimal_spec.rb", "spec/integration/attributes/float_spec.rb", "spec/integration/attributes/hash_spec.rb", "spec/integration/attributes/integer_spec.rb", "spec/integration/attributes/string_spec.rb", "spec/integration/attributes/time_spec.rb", "spec/integration/shared/dirty_trackable_attribute.rb", "spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<virtus>, ["~> 0.0.1"])
      s.add_runtime_dependency(%q<virtus-dirty>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<jeweler>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<simplecov>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_runtime_dependency(%q<virtus>, [">= 0"])
    else
      s.add_dependency(%q<virtus>, ["~> 0.0.1"])
      s.add_dependency(%q<virtus-dirty>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<jeweler>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<simplecov>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<virtus>, [">= 0"])
    end
  else
    s.add_dependency(%q<virtus>, ["~> 0.0.1"])
    s.add_dependency(%q<virtus-dirty>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<jeweler>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<simplecov>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<virtus>, [">= 0"])
  end
end

