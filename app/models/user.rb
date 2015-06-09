class User < ActiveRecord::Base

  has_many :posts
  has_many :comments

  has_secure_password

  validates :password, presence: true,
                         length: { minimum: 8 }
  validates :email, presence: true,
                  uniqueness: true
  validates :name, presence: true

end
