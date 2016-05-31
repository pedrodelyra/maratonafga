json.array!(@contests) do |contest|
  json.extract! contest, :id, :name, :start, :end, :description
  json.url contest_url(contest, format: :json)
end
