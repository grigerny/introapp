json.array!(@mycontacts) do |mycontact|
  json.extract! mycontact, :id
  json.url mycontact_url(mycontact, format: :json)
end
