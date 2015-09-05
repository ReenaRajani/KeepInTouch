json.array!(@events) do |event|
  json.extract! event, :id, :eventname, :eventdate, :eventstarttime, :eventendtime, :description, :address, :additionalinfo, :invite
  json.url event_url(event, format: :json)
end
