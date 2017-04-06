class CreateClothingItems < ActiveRecord::Migration[5.0]
  def change
    create_table :clothing_items do |t|
      t.text :name
      t.text :color
      t.text :fanciness
      t.integer :clothing_category_id
    end
  end
end
