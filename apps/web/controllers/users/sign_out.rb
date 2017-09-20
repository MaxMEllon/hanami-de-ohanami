module Web::Controllers::Users
  class SignOut
    include Web::Action

    params do
      required(:token).filled(:str?)
    end

    def call(params)
      id, token = parse_jwt(params).values_at('id', 'token')
      repo = UserRepository.new
      if repo.find(id).token == token
        repo.update(id, token: nil)
        self.status = 204
      else
        halt 422
      end
    end

    private

    def parse_jwt(params)
      decoded_token = JWT.decode params.get(:token), nil, false
      decoded_token[0]
    end
  end
end
