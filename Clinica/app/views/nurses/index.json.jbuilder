json.array!(@nurses) do |nurse|
  json.extract! nurse, :id, :name, :sex, :age, :coren, :cpf
  json.url nurse_url(nurse, format: :json)
end
