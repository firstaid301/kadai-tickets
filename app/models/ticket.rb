class Ticket < ApplicationRecord
  belongs_to :user
  
#  validates :course, presence: true, length: { maximum: 255 }
  
  
end
