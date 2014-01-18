json.array!(@positons) do |positon|
  json.extract! positon, :id, :work_position
  json.url positon_url(positon, format: :json)
end
