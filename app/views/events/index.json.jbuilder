json.array!(@events) do |event|
  json.extract! event, :id, :eventname, :eventdate, :eventstarttime, :eventendtime, :description, :string, :address, :additionalinfo, :attendanceoption, :invite
  json.url event_url(event, format: :json)
end
