class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id

  belongs_to :persona

  validates :content, :length => { :maximum => 140 }
end
