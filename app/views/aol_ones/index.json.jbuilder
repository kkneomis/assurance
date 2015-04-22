json.array!(@aol_ones) do |aol_one|
  json.extract! aol_one, :id, :q_one, :q_two, :q_three, :q_four, :q_five, :q_six
  json.url aol_one_url(aol_one, format: :json)
end
