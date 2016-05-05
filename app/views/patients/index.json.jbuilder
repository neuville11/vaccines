json.array!(@patients) do |patient|
  json.extract! patient, :id, :name, :birthday, :nss, :curp
  json.url patient_url(patient, format: :json)
end
