require 'mongo'

# config db

client = Mongo::Client.new(['localhost:27017'], :database => 'ecommerce')

#data update (update_one, update_many)

result = client[:products].update_one({name: 'Charger'}, {
  "$set" => {category: {name: 'Cellphone Extras'}}
  # "$set" => {name: 'N.A'} just testing to change just the name not the category
})

#verify 

if result.modified_count > 0
  puts "data updated"
else
  puts "data failed, no document changes"
end
