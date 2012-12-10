class RatingsController < ApplicationController

  def create
    @place = Place.find(params[:place_id])
    @rating = Rating.new(params[:rating])
    @rating.place_id = @place.id
    @rating.user_id = current_user.id 

    if @rating.save
      respond_to do |format|
        format.html {redirect_to @place, :notice => "Your rating has been saved!"}
        format.js
      end
    end
  end

  def update
    @place = Place.find_by_id(params[:place_id])
    @rating = current_user.ratings.find_by_place_id(@place.id)

    if @rating.update_attributes(:value => params[:rating][:value])
      respond_to do |format|
        format.html { redirect_to @place, flash[:notice] = "Rating updated!" }
        format.js
      end
    end
  end

end