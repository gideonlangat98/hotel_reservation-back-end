class AddUsersToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :users, :string
  end
end
