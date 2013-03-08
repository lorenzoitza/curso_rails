class Comment < ActiveRecord::Base
  attr_accessible :blogpost_id, :content
  belongs_to :blogpost
end
