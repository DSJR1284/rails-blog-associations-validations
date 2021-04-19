class Post < ActiveRecord::Base
  validates :name, presence: :true
  validates_presence_of :content 

  belongs_to :user 
  has_many :post_tags 
  has_many :tags, through: :post_tags 
end
