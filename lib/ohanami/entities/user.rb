require_relative './_mixin/json_renderer.rb'

class User < Hanami::Entity
  include Entity::JSONRenderer

  attributes do
    attribute :id, Types::Int
    attribute :email, Types::String
    attribute :token, Types::String
  end
end
