json.array!(@aol_twos) do |aol_two|
  json.extract! aol_two, :id, :q_seven, :q_eight, :q_nine, :q_ten, :q_eleven, :q_twelve
  json.url aol_two_url(aol_two, format: :json)
end
