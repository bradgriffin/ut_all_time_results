json.array!(@results) do |result|
  json.extract! result, :id, :result
  json.url result_url(result, format: :json)
end
