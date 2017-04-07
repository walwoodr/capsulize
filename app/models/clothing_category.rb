class ClothingCategory < ActiveRecord::Base

  has_many :clothing_items
  validates_presence_of :name

  def deletable?
    self.clothing_items.size == 0
  end

end
