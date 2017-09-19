module Web::Views::Users
  class Create
    include Web::View

    def render
      raw(
        { user: user.to_h }.to_json
      )
    end
  end
end
