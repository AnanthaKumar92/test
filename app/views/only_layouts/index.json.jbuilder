json.array!(@only_layouts) do |only_layout|
  json.extract! only_layout, :id, :name, :age, :qualification, :description
  json.url only_layout_url(only_layout, format: :json)
end
