json.extract! profile, :id, :first, :last, :dob, :email, :user_id, :created_at, :updated_at
json.url profile_url(profile, format: :json)
