class User < ActiveRecord::Base

  has_many :user_clothing_items
  has_many :clothing_items, through: :user_clothing_items
  has_secure_password
  has_many :outfits
  #I'm not going to put outfit_clothing_items here. I could but it doesn't seem necessary

  validates_presence_of :username, :password_digest, :name

end
