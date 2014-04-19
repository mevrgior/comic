json.array!(@artobjects) do |artobject|
  json.extract! artobject, :id, :name, :description, :picture, :user_id
  json.url artobject_url(artobject, format: :json)
end
