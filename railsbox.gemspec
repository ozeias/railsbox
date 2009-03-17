# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{railsbox}
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Oz\303\251ias Sant'ana"]
  s.date = %q{2009-03-17}
  s.description = %q{Simple and opinionated helpers for ruby / rails developer}
  s.email = %q{oz.santana@gmail.com}
  s.extra_rdoc_files = ["README.markdown", "LICENSE"]
  s.files = ["README.markdown", "VERSION.yml", "lib/railsbox", "lib/railsbox/core_ext", "lib/railsbox/core_ext/array.rb", "lib/railsbox/core_ext/enumerable.rb", "lib/railsbox.rb", "spec/array_spec.rb", "spec/enumerable_spec.rb", "spec/railsbox_spec.rb", "spec/spec_helper.rb", "LICENSE"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/ozeias/railsbox}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Simple and opinionated helpers for ruby / rails developer}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
