class UserClothingItems < ActiveRecord::Migration[5.0]
  def change
    create_table :user_clothing_items do |t|
      t.integer :user_id
      t.integer :clothing_item_id
    end
  end
end
