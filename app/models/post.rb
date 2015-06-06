class Post < ActiveRecord::Base

  belongs_to :user

  validates :title, presence: true,
                  uniqueness: { scope: :user }
  validates :content, presence: true,
                        format: { with: /https?:\/\/[\S]+/ }
  validates :user, presence: true

end
