class BookSerializer
  include JSONAPI::Serializer
  attributes :title, :body

  attribute :author_name do |book|
    book.author.name
  end 

end
