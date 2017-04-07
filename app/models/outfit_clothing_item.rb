class OutfitClothingItem < ActiveRecord::Base

  belongs_to :outfit
  belongs_to :clothing_item

  validates_presence_of :outfit_id, :clothing_item_id

end
