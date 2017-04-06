class ClothingCategory < ActiveRecord::Base

  has_many :clothing_items

  def deletable?
    self.clothing_items.size == 0 
  end

end
