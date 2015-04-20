json.array!(@p_infos) do |p_info|
  json.extract! p_info, :id, :Name, :Rank, :Department, :Room, :Email, :Ext, :OfficeHours
  json.url p_info_url(p_info, format: :json)
end
