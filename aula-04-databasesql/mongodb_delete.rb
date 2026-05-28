require 'mongo'

# config db

client = Mongo::Client.new(['localhost:27017'], :database => 'ecommerce')

# data deletion

result = client[:products].delete_one({name:'Bread'})

# verification

if result.deleted_count > 0
  puts "registry deleted"
else
  puts "no registry changed"
end