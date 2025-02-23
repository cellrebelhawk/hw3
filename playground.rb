# Enter a new place
@place = Place.new
# Get into from field on website
@place["name"] = params["name"]
# Save entry in SQL
@place.save
# Redirect to index site
redirect_to "/travel/"

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
redirect_to "/travel/"

