# frozen_string_literal: true

require_relative './base_serializer.rb'

class UserSerializer < BaseSerializer
  attribute :id, :email, :token
end
