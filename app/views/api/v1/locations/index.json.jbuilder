json.array! @locations do |location|
  json.extract! location, :long, :lat, :address
end
