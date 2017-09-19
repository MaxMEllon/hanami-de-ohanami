require_relative './base_serializer.rb'

class UserSerializer < BaseSerializer
  attribute :id
  attribute :email
  attribute :token
end
