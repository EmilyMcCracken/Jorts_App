json.array!(@users) do |user|
  json.extract! user, :id, :username, :string, :password_digest, :email
  json.url user_url(user, format: :json)
end
