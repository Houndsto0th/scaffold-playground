json.array!(@headphones) do |headphone|
  json.extract! headphone, :id, :brand, :model, :rating
  json.url headphone_url(headphone, format: :json)
end
