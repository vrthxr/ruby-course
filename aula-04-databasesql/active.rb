require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  host: 'localhost',
  username: 'postgres',
  password: '133766',
  database: 'aularuby'
)

# criação da tabela

ActiveRecord::Schema.define do
  create_table :users do |t|
    t.string :nome
    t.string :email 
  end
end

class User < ActiveRecord::Base
end

user = User.new(nome:name, email: email)
user.save

users = User.all # select * from users

users.each do |user|
  puts "Nome: #{user.nome}, E-mail: #{user.email}"
end