require 'json'
require 'open-uri'

class Api::V1::LocationsController < Api::V1::BaseController
  def index
    @url = "https://api.mapbox.com/geocoding/v5/mapbox.places/museum.json?type=poi&proximity=#{params[:lng]},#{params[:lat]}&access_token=#{ENV['MAPBOX_API_KEY']}"
    response_string = URI.open(@url).read
    @response = JSON.parse(response_string)
    raise
    place = {
      lat: params[:lat],
      long: params[:lng]
    }
    @places = [place]
  end
end
