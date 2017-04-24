json.extract! post, :id, :name, :price, :description, :used, :user_id, :created_at, :updated_at
json.url post_url(post, format: :json)
