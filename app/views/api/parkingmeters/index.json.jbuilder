json.parkingmeters do
  @parkingmeters.each do |parkingmeter|
    json.set! parkingmeter.id do
      json.extract! parkingmeter, :name, :longitude, :latitude, :status
    end
  end
end