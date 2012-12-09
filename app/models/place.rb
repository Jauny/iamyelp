class Place < ActiveRecord::Base
  attr_accessible :name, :description, :address

  belongs_to :user
end