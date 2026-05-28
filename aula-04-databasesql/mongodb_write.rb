require 'mongo'

# config db

client = Mongo::Client.new(['localhost:27017'], :database => 'ecommerce')

# data insert prod/category

result = client[:products].insert_one({
  'name' => 'Charger',
  'category' => {
    'name' => 'Eletronics'
  }
})

# result insert verify

if result.successful?
  puts "data sucessfully added. Id: #{result.inserted_id}"
else
  puts "failed to insert data."
end

