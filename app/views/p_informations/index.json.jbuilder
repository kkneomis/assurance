json.array!(@p_informations) do |p_information|
  json.extract! p_information, :id, :First_Name, :Last_Name, :Rank, :Department, :Room, :Email, :Ext, :OfficeHours
  json.url p_information_url(p_information, format: :json)
end
