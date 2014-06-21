json.array!(@events) do |event|
  json.extract! event, :id, :name, :name_of_sponsor, :start_date, :end_date, :state, :contest_id
  json.url event_url(event, format: :json)
end
