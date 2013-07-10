json.extract! @user, :name, :location, :updated_at#, :device_id, :created_at

json.groups @user.groups :name

json.groups do |json|
  json.array!(@user.groups) do |group|
    json.extract! group, :name
    json.users group.users, :name, :location, :updated_at
    # json.url url_for(group, format: :json)
  end
end