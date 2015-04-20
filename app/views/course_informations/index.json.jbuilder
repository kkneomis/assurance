json.array!(@course_informations) do |course_information|
  json.extract! course_information, :id, :Course_Title, :CRN, :Days, :Time, :Roomstring, :Enrollment
  json.url course_information_url(course_information, format: :json)
end
