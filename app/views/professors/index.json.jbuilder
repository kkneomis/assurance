json.array!(@professors) do |professor|
  json.extract! professor, :id, :First_Name, :Last_Name, :Department, :Address, :City, :State, :Zip_Code, :Cell_Phone, :Home_Phone, :Office_Phone, :Office_Fax, :Primary_Email, :Secondary_Email
  json.url professor_url(professor, format: :json)
end
