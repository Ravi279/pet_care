json.array!(@pets) do |pet|
  json.extract! pet, :id
  json.url pet_url(pet, format: :json)
end
