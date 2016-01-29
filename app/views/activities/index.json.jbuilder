json.array!(@activities) do |activity|
  json.extract! activity, :id, :name, :description, :level, :type, :location_id
  json.url activity_url(activity, format: :json)
end
