json.array!(@hotels) do |hotel|
  json.extract! hotel, :id, :name, :address, :phone, :star, :rate_per_night
  json.url hotel_url(hotel, format: :json)
end
