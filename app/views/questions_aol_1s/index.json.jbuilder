json.array!(@questions_aol_1s) do |questions_aol_1|
  json.extract! questions_aol_1, :id, :q1, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9, :q10, :q11, :q12
  json.url questions_aol_1_url(questions_aol_1, format: :json)
end
