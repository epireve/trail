json.array!(@venues) do |venue|
  json.extract! venue, :id, :name, :address, :phone, :logo, :mini_desc, :website, :email, :more_details, :lat, :lng
  json.url venue_url(venue, format: :json)
end
