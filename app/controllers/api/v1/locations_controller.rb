require 'json'
require 'open-uri'

class Api::V1::LocationsController < Api::V1::BaseController
  def index
    @url = "https://api.mapbox.com/geocoding/v5/mapbox.places/museum.json?type=poi&proximity=13.437641,52.494857&access_token=pk.eyJ1IjoiZmx1ZW5jYSIsImEiOiJja3g0dDJodnIxOWpmMnBwaDluZGFqdDVuIn0.cv0P-t75vYUqbT5hfq7k6g"
    response_string = URI.open(@url).read
    @response = JSON.parse(response_string)
    place = {
      lat: params[:lat],
      long: params[:lng]
    }
    @places = [place]
  end
end
