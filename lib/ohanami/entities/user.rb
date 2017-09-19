class User < Hanami::Entity
  attributes do
    attribute :id, Types::Int
    attribute :email, Types::String
    attribute :password, Types::String
  end
end
