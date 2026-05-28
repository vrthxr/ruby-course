require 'mongo'

# config db

client = Mongo::Client.new(['localhost:27017'], :database => 'ecommerce')

#data read

collection = client[:products]
documents = collection.find 

#data show

puts "Products:"
documents.each do |document|
  puts "Name: #{document[:name]}, Category: #{document[:category][:name]}"
end