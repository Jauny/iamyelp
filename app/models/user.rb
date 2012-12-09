class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password

  validates :name, :presence => true
  validates :email, :presence => true, :uniqueness => { :case_sensitive => false }
  validates :password, :presence => true
end