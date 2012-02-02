class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.belongs_to :real_estate

      t.timestamps
    end
    add_index :media, :real_estate_id
  end
end
