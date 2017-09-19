# frozen_string_literal: true

class UserSerializer < BaseSerializer
  attribute :id, :email, :token
end
