class Comment < ActiveRecord::Base
  attr_accessible :user_id, :place_id, :content

  belongs_to :place
  belongs_to :user

end