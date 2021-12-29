class Api::V1::LocationsController < Api::V1::BaseController
  def index
    place = {
      lat: params[:lat],
      long: params[:lng]
    }
    @places = [place]
  end
end
