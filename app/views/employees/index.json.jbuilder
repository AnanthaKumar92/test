json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :city_id, :age
  json.url employee_url(employee, format: :json)
end
