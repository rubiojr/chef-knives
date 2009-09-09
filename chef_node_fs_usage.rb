#!/usr/bin/env ruby
#
# List Filesystem Usage for every chef node that matches the hostname
# provided. If no argument is provided, matches all the nodes.
#
# Example:
# chef_node_fs_usage '*.cdn.example.com'
# (matches every node whose fqdn ends with cdn.example.com)
#
require 'rubygems'
require 'couchrest'
require 'chef'
require 'pp'

CHEF_DB_URL = 'http://localhost:5984/chef'

db = CouchRest.database(CHEF_DB_URL)
fqdn = ARGV[0]
fqdn = '.*' if fqdn.nil?

db.documents['rows'].each do |doc|
  if doc['id'] =~ /node_/
    node = db.get(doc['id'])
    next if  node.fqdn !~ /#{fqdn}/
    puts node.fqdn
    node.filesystem.each do |fsname,fsattrs|
      if not (%w[proc binfmt_misc sysfs tmpfs devpts rpc_pipefs].include? fsattrs['fs_type'])
        print "    #{fsname}".ljust(50)
        puts fsattrs['percent_used']
      end
    end
    puts
  end
end

