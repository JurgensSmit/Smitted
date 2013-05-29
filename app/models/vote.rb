class Vote < ActiveRecord::Base
attr_accessible :link_id, :up
validates :user_id, :uniqueness => { :scope => :link_id }

  belongs_to :user
  belongs_to :link
end