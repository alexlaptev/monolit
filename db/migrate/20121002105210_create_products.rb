class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :img_url
      t.string :size
      t.string :color
      t.float :price
      t.integer :sub_category_id

      t.timestamps
    end
  end
end
