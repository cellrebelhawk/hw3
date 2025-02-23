class TravelController < ApplicationController

  def index
    # Find all entries
    @places = Place.all
  end

  def show
    # Find an existing place
    @places = Place.find_by({"id" => params["id"]})
    @name = @places["name"]
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

#  # Enter a new entry
#  @entry = Entry.new
#  # Get into from field on website
#  @entry["title"] = params["title"]
#  @entry["description"] = params["description"]
#  @entry["occurred_on"] = params["occurred_on"]
#  @entry["place_id"] = params["place_id"]
#  # Save entry in SQL
#  @entry.save
#  # Redirect to index site
#  redirect_to "/travel/"

end
