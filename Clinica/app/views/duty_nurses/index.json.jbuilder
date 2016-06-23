json.array!(@duty_nurses) do |duty_nurse|
  json.extract! duty_nurse, :id, :duty_id, :nurse_id
  json.url duty_nurse_url(duty_nurse, format: :json)
end
