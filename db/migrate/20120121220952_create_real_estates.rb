class CreateRealEstates < ActiveRecord::Migration
  def change
    create_table :real_estates do |t|
      t.string :operation
      t.string :kind
      t.string :address
      t.integer :max_price
      t.integer :min_price
      t.integer :beds
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
