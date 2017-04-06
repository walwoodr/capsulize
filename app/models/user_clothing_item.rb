class UserClothingItem < ActiveRecord::Base

  belongs_to :user
  belongs_to :clothing_item

end
