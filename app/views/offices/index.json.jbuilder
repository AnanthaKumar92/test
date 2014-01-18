json.array!(@offices) do |office|
  json.extract! office, :id, :employee_id, :position_id, :salary_id, :city_id, :mobile
  json.url office_url(office, format: :json)
end
