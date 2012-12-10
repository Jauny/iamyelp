class Rating < ActiveRecord::Base
  attr_accessible :place_id, :user_id, :value

  belongs_to :user
  belongs_to :place
end
