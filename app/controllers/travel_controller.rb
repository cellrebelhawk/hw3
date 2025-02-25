class TravelController < ApplicationController

  def index
    # Find all entries
    @places = Place.all
  end

  def new
  end

  def show
    # Find an existing place
    @places = Place.find_by({"id" => params["id"]})
    
    @name = @places["name"]
    @places_id = @places["id"]
    @entries = Entry.where("place_id" => params["id"])
  end

  def create
    # Enter a new place
    @places = Place.new
    # Get into from field on website
    @places["name"] = params["name"]
    # Save entry in SQL
    @places.save
    # Redirect to index site
    redirect_to "/travel"
  end

end
