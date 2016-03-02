json.array!(@walletapis) do |walletapi|
  json.extract! walletapi, :id, :amount, :date, :org
  json.url walletapi_url(walletapi, format: :json)
end
