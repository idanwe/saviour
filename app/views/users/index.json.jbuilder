json.array!(@users) do |user|
  json.extract! user, :name, :phone_number, :device_id, :location
  # json.groups user.groups :name
  json.url user_url(user, format: :json)
end