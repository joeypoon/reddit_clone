class Post < ActiveRecord::Base

  belongs_to :user
  has_many :comments

  validates :title, presence: true
  validates :content, presence: true,
                        format: { with: /https?:\/\/[\S]+/ },
                        uniqueness: true
  validates :user, presence: true

end
