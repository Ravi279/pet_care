json.array!(@vets) do |vet|
  json.extract! vet, :id
  json.url vet_url(vet, format: :json)
end
