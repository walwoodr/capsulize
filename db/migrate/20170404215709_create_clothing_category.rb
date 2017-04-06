class CreateClothingCategory < ActiveRecord::Migration[5.0]
  def change
    create_table :clothing_categories do |t|
      t.text :name
    end
  end
end
