# frozen_string_literal: true

class User < Hanami::Entity
  # include Entity::JSONRenderer

  attributes do
    attribute :id, Types::Int
    attribute :email, Types::String
    attribute :token, Types::String
    attribute :password, Types::String
  end

  def valid_password?(password)
    self.password == password
  end
end
