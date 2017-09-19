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

    def call(params)
      @params = params
      halt 400 unless params.valid? && valid_password?
      repo = UserRepository.new
      @user = repo.create(user_params)
    end

    private

    def valid_password?
      password = @params.get(:user, :password)
      password_confirmation = @params.get(:user, :password_confirmation)
      password == password_confirmation
    end

    def user_params
      { email: params.get(:user, :email), password: params.get(:user, :password) }
    end
  end
end
