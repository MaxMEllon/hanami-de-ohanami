module Web::Views::Users
  class Create
    include Web::View

    def render
      raw(user.json(root: :user))
    end
  end
end
