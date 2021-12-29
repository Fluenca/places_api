class Api::V1::LocationsController < Api::V1::BaseController
    before_action :find_place, only: [ :show ]


  def index
    @place = {
      lat: params[:lat],
      long: params[:lng]
    }
  end

  def show
    @place = {test: "hello"}
  end

end
