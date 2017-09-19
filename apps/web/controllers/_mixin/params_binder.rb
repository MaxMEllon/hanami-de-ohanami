module Web::Controllers::Mixin
  module ParamsBinder
    def bind_params
      @params = params
    end
  end
end
