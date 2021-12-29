json.array! @places do |place|
  json.extract! place, :long, :lat
end
