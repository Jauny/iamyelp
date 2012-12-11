class Place < ActiveRecord::Base
  attr_accessible :name, :description, :address

  belongs_to :user
  has_many :comments
  has_many :ratings
  has_many :raters, :through => :ratings, :source => :users

  def average_rating
    @total = self.ratings.map {|r| r.value}.inject(&:+)
    @rating_number = self.ratings.size

    if @total.nil?
      0
    else
      (@total.to_f / @rating_number.to_f).round(1)
    end
  end
end