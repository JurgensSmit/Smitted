class Comment < ActiveRecord::Base
	attr_accessible :message, :user_id, :link_id 
	
	belongs_to :user 
	belongs_to :link 
	has_many :votes
  # attr_accessible :title, :body
end
