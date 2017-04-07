class CreateOutfits < ActiveRecord::Migration[5.0]
  def change
    create_table :user_outfits do |t|
      t.integer :user_id
      t.string :name
    end
  end
end
