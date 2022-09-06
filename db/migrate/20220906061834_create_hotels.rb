class CreateHotels < ActiveRecord::Migration[6.1]
  def change
    create_tables :hotels do |t|
      t.string :name
      t.string :location
      t.integer :price
      t.timestamps
    end
  end
end
