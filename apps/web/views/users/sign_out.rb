module Web::Views::Users
  class SignOut
    include Web::View

    raw({ status: 'success' })
  end
end
