class LoanSerializer
  include JSONAPI::Serializer
  attributes :status, :due_on


  attribute :book_name do |loan|
    loan.book.title
  end

end