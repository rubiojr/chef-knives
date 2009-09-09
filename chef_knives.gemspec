Gem::Specification.new do |s|
  s.name = %q{chef_knives}
  s.version = "0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sergio Rubio"]
  s.date = %q{2009-09-09}
  s.description = %q{Unofficial Chef Server scripts and related stuff. http://wiki.opscode.com/display/chef}
  s.email = ["sergio@rubio.name"]
  s.executables = ["chef_node_fs_usage", "chef_node_mem_usage"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["History.txt", "Manifest.txt", "README.txt", "Rakefile", "bin/chef_node_fs_usage", "bin/chef_node_mem_usage", "lib/chef/knives.rb"]
  s.homepage = %q{http://github.com/rubiojr/chef-knives}
  s.rdoc_options = ["--main", "README.txt"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{chef_knives}
  s.rubygems_version = %q{1.3.3}
  s.summary = %q{Chef addons to become a cooking master!}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<hoe>, [">= 2.3.3"])
    else
      s.add_dependency(%q<hoe>, [">= 2.3.3"])
    end
  else
    s.add_dependency(%q<hoe>, [">= 2.3.3"])
  end
end
