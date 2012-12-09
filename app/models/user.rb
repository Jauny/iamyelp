class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
  has_secure_password

  has_many :places

  before_save :create_remember_token

  validates :name, :presence => true
  validates :email, :presence => true, :uniqueness => { :case_sensitive => false }
  validates :password, :presence => true

  private
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end