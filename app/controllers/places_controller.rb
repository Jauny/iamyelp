class PlacesController < ApplicationController
  before_filter :require_login, :except => [:index, :show]

  def index
    @places =  Place.all.sort {|a,b| b.average_rating <=> a.average_rating}
  end

  def show
    @place = Place.find(params[:id])
    @comment = Comment.new
  end

  def new
    @place = Place.new
  end

  def create
    @place = Place.new(params[:place])
    @place.user_id = current_user.id

    if @place.save
      redirect_to places_path
    else
      render 'new'  
    end
  end

  def edit
    @place = Place.find(params[:id])
  end

  def update
    @place = Place.find(params[:id])
    @place.update_attributes(params[:place])

    redirect_to @place
  end

  def destroy
    Place.find(params[:id]).destroy

    redirect_to root_path
  end

  private
    def require_login
      unless signed_in?
        flash[:error] = "You must be logged in to access this section"
        redirect_to root_path
      end
    end
end