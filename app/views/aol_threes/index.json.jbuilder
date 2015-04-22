json.array!(@aol_threes) do |aol_three|
  json.extract! aol_three, :id, :q_thirthteen, :q_fourthteen, :q_fithteen, :q_sixthteen, :q_seventeen, :q_eightteen
  json.url aol_three_url(aol_three, format: :json)
end
