json.array!(@duties) do |duty|
  json.extract! duty, :id, :turn, :day_id
  json.url duty_url(duty, format: :json)
end
