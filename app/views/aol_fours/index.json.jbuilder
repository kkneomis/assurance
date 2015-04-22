json.array!(@aol_fours) do |aol_four|
  json.extract! aol_four, :id, :q_nineteen, :q_twenty, :q_twentyone, :q_twentytwo
  json.url aol_four_url(aol_four, format: :json)
end
