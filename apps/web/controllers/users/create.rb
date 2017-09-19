# frozen_string_literal: true

module Web::Controllers::Users
  class Create
    include Web::Action
    expose :user

    params do
      required(:user).schema do
        required(:email).filled(:str?)
        required(:password).filled(:str?)
        required(:password_confirmation).filled(:str?)
      end
    end

    def call(_)
      halt 400 unless valid_params?
      @user = UserRepository.new.create(user_params)
    end

    private

    def valid_params?
      params.valid? && valid_password?
    end

    def valid_password?
      password = params.get(:user, :password)
      password_confirmation = params.get(:user, :password_confirmation)
      password == password_confirmation
    end

    def user_params
      {
        email: params.get(:user, :email),
        password: params.get(:user, :password),
        token: SecureRandom.urlsafe_base64(nil, false)
      }
    end
  end
end
