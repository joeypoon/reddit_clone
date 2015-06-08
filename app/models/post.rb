class Post < ActiveRecord::Base

  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true,
                        format: { with: /https?:\/\/[\S]+/ },
                        uniqueness: true
                        
end
