json.array!(@contests) do |contest|
  json.extract! contest, :id, :name, :category, :start_date, :end_date
  json.url contest_url(contest, format: :json)
end
