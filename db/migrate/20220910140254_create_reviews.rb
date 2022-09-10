class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :body
      t.integer :hotel_id
    end
  end
end
