class Link < ActiveRecord::Base
  attr_accessible :title, :url
	belongs_to :user
	has_many :comments 
	validates :title, :length => { :minimum => 6 }
  # attr_accessible :title, :body
end
