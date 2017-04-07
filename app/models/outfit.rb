class Outfit < ActiveRecord::Base

  belongs_to :user
  has_many :outfit_clothing_items
  has_many :clothing_items, through: :outfit_clothing_items

  validates_presence_of :name

end
