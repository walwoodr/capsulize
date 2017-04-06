class ClothingItem < ActiveRecord::Base

  has_many :user_clothing_items
  has_many :users, through: :user_clothing_items
  belongs_to :clothing_category

end
