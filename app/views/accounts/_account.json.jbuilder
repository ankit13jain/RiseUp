json.extract! account, :id, :accountid, :beneficiaryname, :balance, :created_at, :updated_at
json.url account_url(account, format: :json)
