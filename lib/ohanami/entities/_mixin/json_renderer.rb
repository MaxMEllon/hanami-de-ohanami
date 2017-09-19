module Entity
  module JSONRenderer
    def json(opt = {})
      root = opt&.fetch(:root, '')
      if root.empty?
        to_h.to_json
      else
        { root => to_h }.to_json
      end
    end
  end
end
