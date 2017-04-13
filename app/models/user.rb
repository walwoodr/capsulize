class User < ActiveRecord::Base

  has_many :user_clothing_items
  has_many :clothing_items, through: :user_clothing_items
  has_many :outfits
  #I'm not going to put outfit_clothing_items here. I could but it doesn't seem necessary

  has_secure_password
  validates :username, :name, presence: true
  # validates :username, uniqueness: true
  validate :isUsernameUnique?

  def isUsernameUnique?
    errors.add(:username, "#{username} has already been taken!") if User.find_by(username: username)
  end

end
