REQUIREMENTS
------------

rubygems and the following gems installed:

chef
json 
couchrest
choice
ip

All the scripts try to connect to http://localhost:5984/chef (Chef CouchDB database).
Either run them from the chef-server or use SSH to create a tunnel:

  ssh -L5984:localhost:5984 -N chef-server.example.com
