class PlacesController < ApplicationController

  def index
  end

  def new
  end
  
  def create
  # Enter a new entry
  @entry = Entry.new
  # Get into from field on website
  @entry["title"] = params["title"]
  @entry["description"] = params["description"]
  @entry["occurred_on"] = params["occurred_on"]
  @entry["place_id"] = params["place_id"]
  # Save entry in SQL
  @entry.save
  # Redirect to index site
  redirect_to "/travel/#{@entry["place_id"]}"

  end

end
