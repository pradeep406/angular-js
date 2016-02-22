json.array!(@pradeeps) do |pradeep|
  json.extract! pradeep, :id, :name, :age
  json.url pradeep_url(pradeep, format: :json)
end
