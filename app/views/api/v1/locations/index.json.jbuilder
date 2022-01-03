json.array! @response  do |place|
  json.set! :Museum, place['place_name']
end

