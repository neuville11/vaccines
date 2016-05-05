json.array!(@aplicators) do |aplicator|
  json.extract! aplicator, :id, :name, :prefix, :clinic, :cedProf
  json.url aplicator_url(aplicator, format: :json)
end
