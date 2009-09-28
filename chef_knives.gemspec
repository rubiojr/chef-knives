Gem::Specification.new do |s|
  s.name = %q{chef_knives}
  s.version = "0.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Sergio Rubio"]
  s.date = %q{2009-09-28}
  s.description = %q{Unofficial Chef Server scripts and related stuff. http://wiki.opscode.com/display/chef}
  s.email = ["sergio@rubio.name"]
  s.executables = ["chef_node_find", "chef_node_find_domu", "chef_node_fs_usage", "chef_node_last_checkin", "chef_node_mem_usage", "chef_node_stats", "chef_vlan_stats"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "README.txt"]
  s.files = ["AUTHORS", "History.txt", "Manifest.txt", "README.txt", "Rakefile", "bin/chef_node_find", "bin/chef_node_find_domu", "bin/chef_node_fs_usage", "bin/chef_node_last_checkin", "bin/chef_node_mem_usage", "bin/chef_node_stats", "bin/chef_vlan_stats", "chef_knives.gemspec", "lib/chef/knives.rb"]
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
      s.add_runtime_dependency(%q<ip>, [">= 0"])
      s.add_runtime_dependency(%q<choice>, [">= 0"])
      s.add_runtime_dependency(%q<chef>, [">= 0.7"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<couchrest>, [">= 0"])
      s.add_development_dependency(%q<hoe>, [">= 2.3.3"])
    else
      s.add_dependency(%q<ip>, [">= 0"])
      s.add_dependency(%q<choice>, [">= 0"])
      s.add_dependency(%q<chef>, [">= 0.7"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<couchrest>, [">= 0"])
      s.add_dependency(%q<hoe>, [">= 2.3.3"])
    end
  else
    s.add_dependency(%q<ip>, [">= 0"])
    s.add_dependency(%q<choice>, [">= 0"])
    s.add_dependency(%q<chef>, [">= 0.7"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<couchrest>, [">= 0"])
    s.add_dependency(%q<hoe>, [">= 2.3.3"])
  end
end
