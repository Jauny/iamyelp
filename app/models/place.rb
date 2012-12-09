class Place < ActiveRecord::Base
  attr_accessible :name, :description, :address
end