json.array!(@questions) do |question|
  json.extract! question, :id, :description, :solution, :editorial
  json.url question_url(question, format: :json)
end
