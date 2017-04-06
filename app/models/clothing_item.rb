class ClothingItem < ActiveRecord::Base

  has_many :user_clothing_items
  has_many :users, through: :user_clothing_items
  belongs_to :clothing_category
  validates_presence_of :name, :clothing_category, :color, :fanciness

  def belongs_to_user?(user)
    user.clothing_items.exists?(self)
  end

end
