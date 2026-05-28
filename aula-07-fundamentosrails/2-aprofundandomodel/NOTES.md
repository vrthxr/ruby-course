# Study Notes

## ActiveRecord — Console Commands

### Create
```ruby
Product.create(name: "Sabonete")       # creates and saves in one step
product = Product.new(name: "Shampoo") # creates without saving
product.save                           # saves to the database
```

### Read
```ruby
Product.all                            # returns all records
Product.first                          # returns the first record
Product.last                           # returns the last record
Product.find(1)                        # returns record by id — raises error if not found
Product.find_by(name: "Sabonete")      # returns first match — returns nil if not found
Product.where(name: "Sabonete")        # returns all matches as a collection
Product.count                          # returns the total number of records
```

### Update
```ruby
product = Product.find(1)
product.update(name: "Sabonete Novo")  # updates and saves in one step

product.name = "Outro nome"            # changes the attribute in memory
product.save                           # then saves to the database
```

### Delete
```ruby
product = Product.find(1)
product.destroy                        # deletes that specific record

Product.last.destroy                   # deletes the last record
Product.destroy_all                    # deletes every record in the table
```

### Case Insensitive Search
```ruby
# useful when you don't know how the user typed the value
Product.find_by("LOWER(name) = ?", "sabonete".downcase)  # returns first match
Product.where("LOWER(name) = ?", "sabonete".downcase)    # returns all matches
```

### Order & Limit
```ruby
Product.order(:name)                   # alphabetical order
Product.order(created_at: :desc)       # most recent first
Product.limit(5)                       # returns only 5 records
Product.order(:name).limit(3)          # chainable
```
