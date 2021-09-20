class User < ApplicationRecord
  before_save { self.email.downcase! }
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false }
  has_secure_password

  has_many :tickets


#　binding.pry

#  def follow(other_user)
#    unless self == other_user
#    self.relationships.find_or_create_by(follow_id: other_user.id)
#    end
#  end
#
#  def unfollow(other_user)
#    relationship = self.relationships.find_by(follow_id: other_user.id)
#    relationship.destroy if relationship
#  end
#
#  def following?(other_user)
#    self.followings.include?(other_user)
#  end
#  
#  def feed_microposts
#    Micropost.where(user_id: self.following_ids + [self.id])
#  end
  
#  def feed_favorites
#    Favorite.where(user_id: self.like_ids + [self.id])
#  end

#  def like(micropost)
#     self.favorites.find_or_create_by(micropost_id: micropost)
#  end
  
end