class Blogpost < ActiveRecord::Base
  attr_accessible :content, :title, :user_id
  validates_presence_of :title, :content
  validates_uniqueness_of :title
  has_many :comments
  belongs_to :user
end
