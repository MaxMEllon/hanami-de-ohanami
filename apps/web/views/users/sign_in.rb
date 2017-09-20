# frozen_string_literal: true

module Web::Views::Users
  class SignIn
    include Web::View

    def render
      raw(UserSerializer.new(user).send_json)
    end
  end
end
