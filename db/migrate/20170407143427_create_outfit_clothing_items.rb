class CreateOutfitClothingItems < ActiveRecord::Migration[5.0]
  def change
    create_table :outfit_clothing_items do |t|
      t.integer :outfit_id
      t.integer :clothing_item_id
    end
  end
end
