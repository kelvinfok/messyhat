json.array!(@profiles) do |profile|
  json.extract! profile, :id, :first_name, :last_name, :date_of_birth, :country, :looking_for, :my_skill, :summary
  json.url profile_url(profile, format: :json)
end
