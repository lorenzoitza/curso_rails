class Comment < ActiveRecord::Base
  attr_accessible :blogpost_id, :content, :user, :user_id
  belongs_to :blogpost
  belongs_to :user
end
