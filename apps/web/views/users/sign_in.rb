module Web::Views::Users
  class SignIn
    include Web::View

    def render
      raw(UserSerializer.new(user).send_json(root: :user))
    end
  end
end
