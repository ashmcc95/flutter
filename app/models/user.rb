class User < ApplicationRecord
  has_many :posts
  has_many :likes
  has_secure_password

  has_attached_file :avatar, styles: { medium: "200x200#", thumb: "150x150#" }, default_url: "/images/:style/profile.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/


  def to_s
    return self.name
  end
end
