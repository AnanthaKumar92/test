json.array!(@only_layout_fluids) do |only_layout_fluid|
  json.extract! only_layout_fluid, :id, :name, :age, :qualification, :description
  json.url only_layout_fluid_url(only_layout_fluid, format: :json)
end
