json.extract! event, :id, :name, :date, :venue, :fundsneeded, :fundsraised, :created_at, :updated_at
json.url event_url(event, format: :json)
