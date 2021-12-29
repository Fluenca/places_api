class Api::V1::LocationsController < Api::V1::BaseController
  def index
    @places = [{
      long: 1,
      lat: 2,
      address: "here"
    }]
  end
end
