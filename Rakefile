# -*- ruby -*-

require 'rubygems'
require 'hoe'
require './lib/chef/knives.rb'

Hoe.new('chef_knives', Chef::Knives::VERSION) do |p|
  p.developer('Sergio Rubio', 'sergio@rubio.name')
  p.summary = 'Chef addons to become a cooking master!'
  p.description = 'Unofficial Chef Server scripts and related stuff. http://wiki.opscode.com/display/chef'
  p.url = 'http://github.com/rubiojr/chef-knives'
  p.extra_deps << [ 'ip' ]
  p.extra_deps << [ 'choice' ]
  p.extra_deps << [ 'chef', '>= 0.7' ]
  p.extra_deps << [ 'json' ]
  p.extra_deps << [ 'couchrest' ]
end

# vim: syntax=Ruby
