module Web::Controllers::Users
  class SignIn
    include Web::Action
    expose :user

    params do
      required(:user).schema do
        required(:email).filled(:str?)
        required(:password).filled(:str?)
      end
    end

    def call(params)
      user = UserRepository.new.find_by_email! params.get(:user, :email)
      if user.valid_password?(params.get(:user, :password))
        @user = user
      else
        halt 401
      end
    rescue => _
      halt 404
    end
  end
end
