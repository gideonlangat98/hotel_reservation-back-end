class CreateCustomerReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_reviews do |t|
      t.string :comment
      t.integer :hotel_id
      t.timestamps
    end
  end
end
