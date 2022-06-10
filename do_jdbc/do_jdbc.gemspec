# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{do_jdbc}
  s.version = "0.11.1"
  s.platform = %q{java}
  s.homepage      = "https://git.mips.be:8443/repositories/HIS/do/do_openedge"
  s.license       = "MIT"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Alex Coles"]
  s.description = %q{Provides JDBC support for usage in DO drivers for JRuby}
  s.email = %q{alex@alexbcoles.com}
  s.extra_rdoc_files = %w[ChangeLog.markdown LICENSE README.markdown]
  s.files = %w[ChangeLog.markdown LICENSE README.markdown Rakefile lib/do_jdbc.rb lib/do_jdbc/version.rb lib/do_jdbc_internal.jar tasks/compile.rake tasks/release.rake]
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  # s.rubyforge_project = %q{dorb}
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{DataObjects JDBC support library}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      # if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<data_objects>, ["= 0.11.1"])
      s.add_development_dependency(%q<rake-compiler>, ["~> 1.2"])
    else
      s.add_dependency(%q<data_objects>, ["= 0.11.1"])
      s.add_dependency(%q<rake-compiler>, ["~> 1.2"])
    end
  else
    s.add_dependency(%q<data_objects>, ["= 0.11.1"])
    s.add_dependency(%q<rake-compiler>, ["~> 1.2"])
  end
end
