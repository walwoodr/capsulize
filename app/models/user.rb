class User < ActiveRecord::Base

  has_many :user_clothing_items
  has_many :clothing_items, through: :user_clothing_items
  has_secure_password
  validates_presence_of :username, :password, :name

end
