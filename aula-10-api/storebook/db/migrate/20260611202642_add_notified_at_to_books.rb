class AddNotifiedAtToBooks < ActiveRecord::Migration[8.1]
  def change
    add_column :books, :notified_at, :datetime
  end
end
