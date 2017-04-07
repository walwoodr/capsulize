class OutfitClothingItem < ActiveRecord::Base

  belongs_to :outfit
  belongs_to :clothing_item

end
