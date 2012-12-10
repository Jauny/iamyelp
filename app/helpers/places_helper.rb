module PlacesHelper

  def rating_ballot
    @rating = current_user.ratings.find_by_place_id(params[:id]) || current_user.ratings.new
  end

  def current_user_rating
    if @rating = current_user.ratings.find_by_place_id(params[:id])
      @rating.value
    else
      "N/A"
    end
  end

end