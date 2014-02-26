json.array!(@pets) do |pet|
  json.extract! pet, :name, :raza, :specie, :birthday, :color
  json.url pet_url(pet, format: :json)
end
