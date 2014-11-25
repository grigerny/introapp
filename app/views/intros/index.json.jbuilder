json.array!(@intros) do |intro|
  json.extract! intro, :id
  json.url intro_url(intro, format: :json)
end
