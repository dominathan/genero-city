json.array!(@favors) do |favor|
  json.extract! favor, :id, :address, :latitude, :longitude, :title, :description, :user_id
  json.url favor_url(favor, format: :json)
end
