class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  validates :body, presence: true
  validates :body, length: { minimum: 1, maximum: 50, message: 'has too many characters (max 50)'}

end
