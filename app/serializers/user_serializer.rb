class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :name
  UserSerializer.new(user).serializable_hash[:data][:attributes]
end
