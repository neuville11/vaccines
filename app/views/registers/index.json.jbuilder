json.array!(@registers) do |register|
  json.extract! register, :id, :patientId, :vaccineId, :doctorId, :dosisNumber
  json.url register_url(register, format: :json)
end
