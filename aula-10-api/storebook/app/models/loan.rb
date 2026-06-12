class Loan < ApplicationRecord
  belongs_to :book
  belongs_to :user

  include AASM
  aasm column: 'status' do
    state :borrowed, initial: true
    state :late
    state :returned
  
      event :mark_late do
        transitions from: :borrowed, to: :late
      end
  
      event :return_book do
        transitions from: [:borrowed, :late], to: :returned
      end
    end
end